package com.travelmaker.stravel.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping("membermain.do")
	public String moveSupportMain() {
		return "member/memberMain";
	}
}
