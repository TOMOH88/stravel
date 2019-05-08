package com.travelmaker.stravel.faq.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FaqContorller {
	
	@RequestMapping("faqlist1.do")
	public String moveFaqList1Page() {
		return "faq/faqList1";
	}
	
	@RequestMapping("faqlist2.do")
	public String moveFaqList2Page() {
		return "faq/faqList2";
	}
	
	@RequestMapping("faqlist3.do")
	public String moveFaqList3Page() {
		return "faq/faqList3";
	}
	
	@RequestMapping("adminfaq.do")
	public String moveaFaqListPage() {
		return "faq/adminFaqList";
	}
	
	@RequestMapping(value="faqinsert.do")
	public String moveFaqWritePage() {
		return "faq/adminFaqWrite";
	}
}









