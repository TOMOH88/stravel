package com.travelmaker.stravel.support.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.support.model.service.SupportService;
import com.travelmaker.stravel.support.model.vo.QnaVo;

@Controller
public class SupportController {
	
	private static final Logger logger= LoggerFactory.getLogger(SupportController.class);
	@Autowired
	private SupportService supportService;
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
	}
		
}
