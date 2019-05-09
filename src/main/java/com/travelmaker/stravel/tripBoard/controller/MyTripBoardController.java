package com.travelmaker.stravel.tripBoard.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoardReview;


@Controller
public class MyTripBoardController {

		//¥Îãπ ¥Îûò§Ï Í¥Ä®Îêú Î°úÍ∑∏Î•Ï∂úÎ†• êÎäî ÄòÍ∏∞ ÑÌïú Î°úÍ∑∏ Í∞ùÏ≤¥ ùÏÑ±
		private static final Logger logger = LoggerFactory.getLogger(MyTripBoardController.class);
		
		//MemberService DI
		@Autowired
		private MyTripBoardService myService;
		
		@RequestMapping("tripboard.do")
		public ModelAndView moveTripList(ModelAndView mv) {
			logger.info("ºÏ†ïêÎûë ëÏÜç");
			
			ArrayList<MyTripBoard> boardList = myService.tripBoardListAll();
			mv.addObject("list", boardList);
			
			
			mv.setViewName("MyTripBoard/tripBoardList");
			
			return mv;
		}
		@RequestMapping(value = "insertnotice.do", method = RequestMethod.POST)
		public String insertNotice(MyTripBoard board, MultipartHttpServletRequest imagerequest, HttpServletRequest request) {
			String savePath = request.getSession().getServletContext().getRealPath("resources/img/myTripBoard");
			ArrayList<MyTripBoardImage> imageList = new ArrayList<MyTripBoardImage>();
			
			System.out.println(board);
			int result = myService.insertBoard(board);
			System.out.println(result);
			if(result <= 0)
				return "MyTripBoard/tripBoardList";
			List<MultipartFile> fileList = imagerequest.getFiles("picture");
			for(int i = 0; i<fileList.size(); i++) {
				String originalFileName = fileList.get(i).getOriginalFilename();
				
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
				} catch (Exception e) {
					
				}
			}
			return "MyTripBoard/tripBoardList";
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
			
			mv.setViewName("MyTripBoard/tripBoardDetail");
			
			return mv;
		}
		
		@RequestMapping(value = "insertreview.do", method = RequestMethod.POST)
		public String insertReview(MyTripBoardReview review) {
			
			if(myService.insertReview(review) > 0)
		
				return "redirect:tripboarddetail.do?board_no="+review.getBoard_no();
			else
				return "common/error";
		}
		
}
