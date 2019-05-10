package com.travelmaker.stravel.support.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FaqController {
	//faq 작업공간
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
}