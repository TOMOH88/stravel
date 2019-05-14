package com.travelmaker.stravel.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@RequestMapping("test1.do")
	public String moveTestPage() {
		return "test/test";
	}
	
	@RequestMapping("test3.do")
	public String moveTest1Page() {
		return "test/test1";	
	}
}
