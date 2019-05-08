package com.travelmaker.stravel.qna.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnaController {
	@RequestMapping("qnalist.do")
	public String moveQnaListPage() {
		return "qna/qnaList";
	}
	
	@RequestMapping("adminqna.do")
	public String moveadminQnaListPage() {
		return "qna/adminQna";
	}
}
