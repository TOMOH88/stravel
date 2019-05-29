package com.travelmaker.stravel.member.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
/*import org.springframework.web.multipart.MultipartFile;*/
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.common.FileUtil;
import com.travelmaker.stravel.common.UUIDUtil;
import com.travelmaker.stravel.member.model.service.MemberService;
import com.travelmaker.stravel.member.model.vo.Member;

@Controller
public class MemberController {
	//해당 클래스와 관련된 로그를 출력 또는 저장하기 위한 로그 객체 생성 
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	//MemberService DI
	@Autowired
	private MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder bcryptpasswordEncoder;
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String loginMethod(Member member, 
			HttpSession session, SessionStatus status) {
		logger.info("login.do run.");
		Member loginMember = memberService.selectLogin(member);	
		session.setAttribute("loginMember", loginMember);
		status.setComplete();
		return "home";
	}
	@RequestMapping("logout.do")
	public String logoutMethod(HttpServletRequest request) {
		logger.info("logout.do run.");
		HttpSession session = request.getSession(false);
		
		if(session != null) {
			session.invalidate();
		}
		
		return "home";
	}

	@RequestMapping(value="minsert.do", method=RequestMethod.POST)
	public String insertMember(Member mb) {
		mb.setUser_password(
				bcryptpasswordEncoder.encode(mb.getUser_password()));
		int result = memberService.insertMember(mb);
		return "home";
		
	}
	@RequestMapping("myinfo.do")
	public ModelAndView selectMember(ModelAndView mv,@RequestParam(name="uno", required=false) int uno) {
		Member member = memberService.selectMember(uno);
		mv.addObject("member", member);
		mv.setViewName("member/memberDetailView");
		return mv;
	}
	
	@RequestMapping("mdel.do")
	public String memberDelete(Model model,
			@RequestParam(name="useremail") String useremail) {
		logger.info("model.do run.");
		int result = memberService.deleteMember(useremail);
		if(result > 0)
			return "redirect:logout.do";
		else {
			model.addAttribute("message", "장비를 정지합니다, 앙대!");
			return "common/error";
		}
		
	}
		
/*	@RequestMapping("mupview.do")
	public ModelAndView updateMember(ModelAndView mv,
			@RequestParam(name="useremail") String useremail) {
		
		Member member = memberService.selectMember(useremail);
		
		if(member != null) {
			mv.addObject("member", member);
			mv.setViewName("member/memberUpdatePage");				
		}else {
			mv.addObject("message", "회원정보 조회 실패!");
			mv.setViewName("common/error");
		}
		
		return mv;
	}*/
	
	@RequestMapping(value="mupdate.do", method=RequestMethod.POST)
	public ModelAndView updateMember(ModelAndView mv,Member member,@RequestParam(name="upfile", required=false) MultipartFile upfile,HttpServletRequest request) {				
		System.out.println(member);
		if(!upfile.isEmpty()) {
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/files/memberProfile");
			System.out.println(savePath);
			String originalFileName = upfile.getOriginalFilename();
			String renameFileName = member.getUser_name()+"-" + UUIDUtil.GetUUID()+ "." + FileUtil.getExtension(originalFileName);
			//파일업로드용
			FileUtil.upLoadFile(upfile,originalFileName,savePath,renameFileName );
			member.setUser_picture(renameFileName);
			}
		if(member.getUser_password() != null && member.getUser_password() != "") {
		member.setUser_password(
				bcryptpasswordEncoder.encode(member.getUser_password()));
		}
		int result = memberService.updateMember(member);
		mv.setViewName("redirect:myinfo.do?uno="+member.getUser_no());
		return mv;
	}
		
}
