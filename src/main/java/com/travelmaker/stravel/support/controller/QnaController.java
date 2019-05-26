package com.travelmaker.stravel.support.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.support.model.service.QnaService;
import com.travelmaker.stravel.support.model.vo.QnaVo;

@Controller
public class QnaController {
	
	private static final Logger logger= LoggerFactory.getLogger(QnaController.class);
	@Autowired
	private QnaService qnaService;
	
	//qna작업공간
	@RequestMapping("qnalist.do")
	public ModelAndView moveQnaListPage(ModelAndView mv,PagingVo paging) {
		paging.setUserId("김지훈");
			ArrayList<QnaVo> lists = qnaService.selectPagingQnaUser(paging);
			paging.setTotal(qnaService.selectTotalPagingQnaUser(paging));	
			System.out.println("모든 게시글 "+lists.size()+"="+paging.getTotal());
			mv.addObject("qnaList", lists);
	        mv.addObject("p", paging);
	        mv.setViewName("support/qna/qnaList");
		return mv;
	}
	@RequestMapping("qnaWrite.do")
	public String moveUserQnaWritePage() {
		return "support/qna/qnaWrite";
	}
	@RequestMapping("insertUserQna.do")
	public ModelAndView insertUserQna(ModelAndView mv,QnaVo qna) {
		int result = qnaService.insertUserQna(qna);
		mv.setViewName("redirect:qnalist.do");
		return mv;
	}
	
	
	@RequestMapping("adminqna.do")
	public ModelAndView moveadminQnaListPage(ModelAndView mv,PagingVo paging) {
		
		if(paging.getSearchCategory() == null && paging.getItems() == null || paging.getSearchCategory() == "" && paging.getItems() == "") {
			ArrayList<QnaVo> lists = qnaService.selectPaging(paging);
			paging.setTotal(qnaService.selectTotalPaging());	
			System.out.println("모든 게시글 "+lists.size()+"="+paging.getTotal());
			mv.addObject("qnaList", lists);
	        mv.addObject("p", paging);
	        mv.setViewName("support/qna/adminQna");
		}else{
			ArrayList<QnaVo> lists = qnaService.selectPaging(paging);
			paging.setTotal(qnaService.selectTotalPagingSearch(paging));	
			System.out.println("검색된 게시글"+lists.size()+"="+paging.getTotal());
			mv.addObject("qnaList", lists);
	        mv.addObject("p", paging);
	        mv.setViewName("support/qna/adminQna");
		}
		return mv;
	}
	
	@RequestMapping("adminqnaView.do")
	public ModelAndView moveadminQnaListViewPage(ModelAndView mv,@RequestParam(name="qna_no", required=false) int qna_no) {
		QnaVo qna = qnaService.selectAdminQnaOne(qna_no);
		mv.addObject("qna", qna);
		mv.setViewName("support/qna/qnaListView");
		return mv;
	}
	@RequestMapping("insertQnaAnswer.do")
	public ModelAndView updateQnaAnswer(ModelAndView mv,QnaVo qna) {
		System.out.println(qna);
		int result = qnaService.updateQnaAnswer(qna);
		mv.setViewName("redirect:adminqnaView.do?qna_no="+qna.getQna_no());
		return mv;
	}
	
	@RequestMapping("qnalistView.do")
	public ModelAndView moveQnaListViewPage(ModelAndView mv,@RequestParam(name="qna_no", required=false) int qna_no) {
		QnaVo qna = qnaService.selectUserQnaOne(qna_no);
		mv.addObject("qna", qna);
		mv.setViewName("support/qna/uqnaListView");
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*
	@RequestMapping("support.do")
	public String moveSupportMain() {
		logger.info("고객센터 접속");
		return "support/supportmain";
	}
	@RequestMapping("qnalistadmin.do")
	public String moveQnaListAdmin() {
		logger.info("1대1 문의 게시판 관리자 접속");
		return "support/qnaListAdmin";
	}
	@RequestMapping("qnalist.do")
	public ModelAndView moveQnaList(ModelAndView mv) {
		logger.info("1대1 문의 게시판 사용자 접속");
		String userid = "김지훈";
		ArrayList<QnaVo> qnaList = supportService.selectMyQnaList(userid);
		
		mv.addObject("qnalist", qnaList);
		mv.setViewName("support/qnaList");
		return mv;
	}
	@RequestMapping("qnawrite.do")
	public String moveQnaWrite() {
		logger.info("1대1 문의 게시판 사용자 글쓰기 접속");
		return "support/qnaWrite";
	}
	
	@RequestMapping("qnadetail.do")
	public ModelAndView moveQnaDetail(ModelAndView mv,QnaVo qnaVo) {
		logger.info("1대1 문의 게시글 상세 접속");
		QnaVo list = supportService.selectMyQnaListOne(qnaVo);
		list.setQna_content(list.getQna_content().replace("<br>", "\r\n"));
		if(list.getQna_answer() != null) {
		list.setQna_answer(list.getQna_answer().replace("<br>", "\r\n"));
		}
		mv.addObject("list", list);
		mv.setViewName("support/qnaDetail");
		return mv;
		
	}
	
	
	
	@RequestMapping(value="qnainsert.do",method=RequestMethod.POST)
	public String qnaInsert(QnaVo qnavo,@RequestParam(name="qnaimage", required=false) MultipartFile qnaimage,HttpServletRequest request) {
		String path = "support/qnaerror";
		System.out.println("1:1 입력정보 :"+qnavo);
		System.out.println("이미지 정보 :"+qnaimage.getOriginalFilename());
		qnavo.setQna_content(qnavo.getQna_content().replace("\r\n", "<br>"));
		if(qnaimage.getOriginalFilename()!="") {
		String savePath = request.getSession().getServletContext().getRealPath("/resources/files/qnaImages");
		String originalFileName = qnaimage.getOriginalFilename(); 
		try {
			qnaimage.transferTo(new File(savePath+"\\"+qnaimage.getOriginalFilename()));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			
			//String fileExt = FileUtil.getExtension(originFileName);
			//String refilename = UUIDUtil.GetUUID()+"." fileExt;
			
			
			String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis()))
						+ "." + originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
			qnavo.setRename_qfilename(renameFileName);	
				
				File originFile = new File(savePath + "\\" + originalFileName);
				File renameFile = new File(savePath + "\\" + renameFileName);
				if(!originFile.renameTo(renameFile)) {
					int read = -1;
					byte[] buf = new byte[1024];
					
					FileInputStream fin = 
							new FileInputStream(originFile);
					FileOutputStream fout = 
							new FileOutputStream(renameFile);
					
					while((read = fin.read(buf, 0, buf.length)) != -1) {
						fout.write(buf, 0, read);
					}
					
					fin.close();
					fout.close();
					originFile.delete();
				}
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		}
		System.out.println(qnavo);
		int result = supportService.qnaInsert(qnavo);
		if(result>0) {
			path= "support/qnaList";
		}
		
		return path;
	}*/
		
}
