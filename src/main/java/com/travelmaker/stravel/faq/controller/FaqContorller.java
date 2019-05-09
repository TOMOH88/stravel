package com.travelmaker.stravel.faq.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FaqContorller {
	
	@RequestMapping("faqlist.do")
	public String moveFaqList1Page() {
		return "faq/faqList";
	}
	
	@RequestMapping("adminfaq.do")
	public String moveaFaqListPage() {
		return "faq/adminFaqList";
	}
	
	@RequestMapping(value="faqinsert.do")
	public String moveFaqWritePage() {
		return "faq/adminFaqWrite";
	}
	
	@RequestMapping("adminfaqView.do")
	public String moveFaqListViewPage() {
		return "faq/adminFaqListView";
	}
}









