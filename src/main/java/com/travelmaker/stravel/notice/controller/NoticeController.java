package com.travelmaker.stravel.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	
	@RequestMapping("notice.do")
	public String movenoticePage() {
		return "notice/noticeList";
	}
	
	@RequestMapping("adminnotice.do")
	public String moveAdminNoticePage() {
		return "notice/anoticeList";
	}
	
	@RequestMapping("noticewrite.do")
	public String moveAdminNoticeWritePage() {
		return "notice/noticeWrite";
	}
}
