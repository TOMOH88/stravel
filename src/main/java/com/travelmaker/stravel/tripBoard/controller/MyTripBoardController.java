package com.travelmaker.stravel.tripBoard.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.common.UUIDUtil;
import com.travelmaker.stravel.tripBoard.model.sevice.MyTripBoardService;
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoard;
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoardImage;
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoardLike;
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoardReview;


@Controller
public class MyTripBoardController {

		//해당 클래스와 관련된 로그를 출력 또는 저장 하기 위한 로그 객체 생성
		private static final Logger logger = LoggerFactory.getLogger(MyTripBoardController.class);
		
		//MemberService DI
		@Autowired
		private MyTripBoardService myService;
		
		@RequestMapping("tripboard.do")
		public ModelAndView moveTripList(ModelAndView mv) {
			logger.info("일정자랑 접속");
			
			ArrayList<MyTripBoard> boardList = myService.tripBoardListAll();
			mv.addObject("list", boardList);
			
			System.out.println(boardList);
			mv.setViewName("MyTripBoard/tripBoardList");
			
			return mv;
		}
		@RequestMapping(value = "selectlist.do", method = RequestMethod.POST)
		public ModelAndView selectList(ModelAndView mv, @RequestParam (name="board_title") String board_title) {
			ArrayList<MyTripBoard> boardList = myService.selectList(board_title);
			mv.addObject("list", boardList);
			
			System.out.println(boardList);
			mv.setViewName("MyTripBoard/tripBoardList");
			
			return mv;
		}
		
		/*@RequestMapping(value = "/stravel/like.do", method=RequestMethod.GET, produces="text/plain;charset=UTF-8")
		public String like(int board_no, HttpSession session) {
			int member_no = (Integer)session.getAttribute("member_no");
			JSONObject obj = new JSONObject();
			
			ArrayList<String> msgs = new ArrayList<String>();
			HashMap<String,Object> hashMap = new HashMap<String, Object>();
			hashMap.put("board_no", board_no);
			hashMap.put("member_no", member_no);
			MyTripBoardLike likeVo = liketoProc.read(hashMap);
			
			MyTripBoard board = boardProc.read(board_no);
			int like_cnt = board.getLike_cnt();
			int like_check = 0;
			like_check = likeVo.getLike_check();
			
			if(liketoProc.countbyLike(hashMap) ==0) {
				liketoProc.create(hashMap);
			}
			
			if(like_check ==0) {
				msgs.add("좋아요!");
				liketoProc.like_check(hashMap);
				like_check++;
				like_cnt++;
				boardProc.like_cnt_up(board_no);
			}else {
				msgs.add("좋아요 취소");
				liketoProc.like_check_cancel(hashMap);
				like_check--;
				like_cnt--;
				boardProc.like_cnt_down(board_no);
			}
			obj.put("board_no", likeVo.getBoard_no());
			obj.put("like_check", like_check);
			obj.put("like_cnt", like_cnt);
			obj.put("msg", msgs);
			
			return obj.toJSONString();
		}*/
		@RequestMapping(value = "insertnotice.do", method = RequestMethod.POST)
		public String insertNotice(MyTripBoard board, MultipartHttpServletRequest imagerequest, HttpServletRequest request) {
			String savePath = request.getSession().getServletContext().getRealPath("/resources/img/myTripBoard");
			ArrayList<MyTripBoardImage> imageList = new ArrayList<MyTripBoardImage>();
			board.setBoard_no(myService.selectBoardNo());
			System.out.println("board : " + board);
			int result = myService.insertBoard(board);
			System.out.println(result);
			if(result <= 0)
				return "redirect:tripboard.do";
			
			List<MultipartFile> fileList = imagerequest.getFiles("picture");
			System.out.println("fileListsize : " + fileList.size());
			for(int i = 0; i<fileList.size(); i++) {
				String originalFileName = fileList.get(i).getOriginalFilename();
				System.out.println("originalFileName : " + originalFileName);
				try {
					fileList.get(i).transferTo(new File(savePath + "\\" + fileList.get(i).getOriginalFilename()));
					String renameFileName = board.getBoard_writer() + "-" + UUIDUtil.GetUUID() + "." + originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
					
					File originFile = new File(savePath + "\\" + originalFileName);
					File renameFile = new File(savePath + "\\" + renameFileName);
					if(!originFile.renameTo(renameFile)) {
						int read = -1;
						byte[] buf = new byte[1024];
						
						FileInputStream fin = new FileInputStream(originalFileName);
						FileOutputStream fout = new FileOutputStream(renameFile);
						
						while((read = fin.read(buf, 0, buf.length)) != -1) {
							fout.write(buf, 0, read);
						}
						fin.close();
						fout.close();
						originFile.delete();
					}
					imageList.add(new MyTripBoardImage(board.getBoard_no(), i+1, renameFileName));
					int result2 = myService.insertBoardImage(imageList.get(i));
					System.out.println("result2 : " + result2);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return "redirect:tripboard.do";
		}
		
		
		@RequestMapping("writetrip.do")
		public String moveWriteTrip() {
			return "MyTripBoard/writeTripBoard";
		}
		
		@RequestMapping("tripboarddetail.do")
		public ModelAndView moveTripBoardDetail(ModelAndView mv, @RequestParam(name = "board_no") int board_no) {
			
			MyTripBoard myboard = myService.tripBoardDetail(board_no);
			mv.addObject("myboard", myboard);
			
			myService.addReadCount(board_no);
			
			ArrayList<MyTripBoardReview> reviewList = myService.reviewListAll(board_no);
			mv.addObject("review", reviewList);
			ArrayList<MyTripBoardImage> imageList = myService.imageListAll(board_no);
			mv.addObject("image", imageList);
			
			mv.setViewName("MyTripBoard/tripBoardDetail");
			
			return mv;
		}
		
		@RequestMapping("tripboarddetailadmin.do")
		public ModelAndView moveTripBoardDetailAdmin(ModelAndView mv, @RequestParam(name = "board_no") int board_no) {
			
			MyTripBoard myboard = myService.tripBoardDetail(board_no);
			mv.addObject("myboard", myboard);
			myService.addReadCount(board_no);
			ArrayList<MyTripBoardReview> reviewList = myService.reviewListAll(board_no);
			mv.addObject("review", reviewList);
			ArrayList<MyTripBoardImage> imageList = myService.imageListAll(board_no);
			mv.addObject("image", imageList);
			mv.setViewName("MyTripBoard/tripBoardDetailAdmin");
			
			return mv;
		}
		
		@RequestMapping(value = "insertreview.do", method = RequestMethod.POST)
		public String insertReview(MyTripBoardReview review) {
			
			if(myService.insertReview(review) > 0)
		
				return "redirect:tripboarddetail.do?board_no="+review.getBoard_no();
			else
				return "common/error";
		}
		
		@RequestMapping("deletereview.do")
		public String deleteReview(Model model, @RequestParam(name = "answer_no") int answer_no, @RequestParam(name = "board_no") int board_no) {
			int result = myService.deleteReview(answer_no);
			
			if(result > 0)
				return "redirect:tripboarddetailadmin.do?board_no=" + board_no;
			else {
				model.addAttribute("message", "리뷰 삭제 실패!");
				return "common/error";
			}
		
		}
		@RequestMapping("deleteschedule.do")
		public String deleteSchedule(Model model, @RequestParam(name = "board_no") int board_no) {
			System.out.println(board_no);
			int result = myService.deleteSchedule(board_no);
			if(result > 0) {
				return "redirect:tripboard.do";
			}else {
				model.addAttribute("message", "삭제 실패!");
				return "common/error";
			}
		}
}
