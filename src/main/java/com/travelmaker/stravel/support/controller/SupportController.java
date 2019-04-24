package com.travelmaker.stravel.support.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	public String moveQnaList() {
		logger.info("1대1 문의 게시판 사용자 접속");
		return "support/qnaList";
	}
	@RequestMapping("qnawrite.do")
	public String moveQnaWrite() {
		logger.info("1대1 문의 게시판 사용자 글쓰기 접속");
		return "support/qnaWrite";
	}
	@RequestMapping(value="qnainsert.do",method=RequestMethod.POST)
	public String qnaInsert(QnaVo qnavo,@RequestParam(name="qnaimage", required=false) MultipartFile qnaimage,HttpServletRequest request) {
		String path = "support/qnaerror";
		System.out.println("1:1 입력정보 :"+qnavo);
		System.out.println("이미지 정보 :"+qnaimage.getOriginalFilename());
		
		if(qnaimage.getOriginalFilename()!="") {
		String savePath = request.getSession().getServletContext().getRealPath("/resources/files/qnaImages");
		String originalFileName = qnaimage.getOriginalFilename(); 
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis()))
						+ "." + originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
				
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
				qnavo.setRename_qfilename(renameFileName);
				
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
