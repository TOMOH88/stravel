package com.travelmaker.stravel.support.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.travelmaker.stravel.common.FileUtil;
import com.travelmaker.stravel.common.UUIDUtil;
import com.travelmaker.stravel.support.model.service.NoticeService;
import com.travelmaker.stravel.support.model.vo.NoticeVo;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	//공지사항 작업공간
	@RequestMapping("notice.do")
	public String movenoticePage() {
		return "support/notice/noticeList";
	}
	
	@RequestMapping("adminnotice.do")
	public String moveAdminNoticePage() {
		return "support/notice/anoticeList";
	}
	
	@RequestMapping("noticewrite.do")
	public String moveAdminNoticeWritePage() {
		return "support/notice/noticeWrite";
	}
	
	@RequestMapping(value="insertNotice.do",method=RequestMethod.POST)
	public String insertNotice(NoticeVo notice,@RequestParam(name="upfile", required=false) MultipartFile upfile,HttpServletRequest request) {
		//파일업로드 및 리네임 
		if(!upfile.isEmpty()) {
		String savePath = request.getSession().getServletContext().getRealPath("/resources/files/notice");
		System.out.println(savePath);
		String originalFileName = upfile.getOriginalFilename();
		notice.setOriginalname_nfilename(originalFileName);
		try {
		upfile.transferTo(new File(savePath+"\\"+upfile.getOriginalFilename()));
		String renameFileName = "notice-"+UUIDUtil.GetUUID()+ "." + FileUtil.getExtension(originalFileName);
		File originFile = new File(savePath + "\\" + originalFileName);
		File renameFile = new File(savePath + "\\" + renameFileName);
		if(!originFile.renameTo(renameFile)) {
			int read = -1;
			byte[] buf = new byte[1024];
			
			FileInputStream fin = 
					new FileInputStream(originalFileName);
			FileOutputStream fout = 
					new FileOutputStream(renameFile);
			
			while((read = fin.read(buf, 0, buf.length)) != -1) {
				fout.write(buf, 0, read);
			}
			fin.close();
			fout.close();
			originFile.delete();
		}
		notice.setRename_nfilename(renameFileName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		}
		System.out.println(notice);
		int result = noticeService.insertNotice(notice);
		return "support/notice/anoticeList";
	}
}
