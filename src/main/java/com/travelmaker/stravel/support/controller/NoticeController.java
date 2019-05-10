package com.travelmaker.stravel.support.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
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
	
}
