package com.travelmaker.stravel.admin.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.StreamingHttpOutputMessage;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.admin.model.service.AdminService;
import com.travelmaker.stravel.admin.model.vo.AdminVo;
import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.member.model.vo.Member;
import com.travelmaker.stravel.owner.model.vo.Owner;

@Controller
public class adminController {
	@Autowired
	private AdminService adminService;
	@Autowired
	BCryptPasswordEncoder bcryptpasswordEncoder;
	@RequestMapping(value="admininsert.do", method=RequestMethod.POST)
	public String insertAdmin(AdminVo admin) {
		admin.setAdmin_password(bcryptpasswordEncoder.encode(admin.getAdmin_password()));
		int result = adminService.insertAdmin(admin);
		return "admin";
		
	}
	@RequestMapping(value="adminLogin.do", method=RequestMethod.POST)
	public String adminlogin(AdminVo admin, 
			HttpSession session, SessionStatus status) {
		String path = "home";
		AdminVo loginAdmin = adminService.selectLoginAdmin(admin);	
		if(loginAdmin != null) {
		session.setAttribute("loginAdmin", loginAdmin);
		status.setComplete();
		path= "admin/adminMain";
		}
		return path;
	}
	@RequestMapping("adminLogout.do")
	public String logoutMethod(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if(session != null) {
			session.invalidate();
		}	
		return "admin";
	}
	@RequestMapping("memberManager.do")
	public ModelAndView selectMemberList(ModelAndView mv,PagingVo paging) {
		ArrayList<Member> list = adminService.selectMemberList(paging);
		paging.setTotal(adminService.selectTotalPaging(paging));
		mv.addObject("member", list);
		mv.addObject("p", paging);
		mv.setViewName("admin/adminMemberManager");
		return mv;
	}
	@RequestMapping("ownerManager.do")
	public ModelAndView selectOwnerList(ModelAndView mv,PagingVo paging) {
		ArrayList<Owner> list = adminService.selectOwnerList(paging);
		paging.setTotal(adminService.selectTotalOwnerPaging(paging));
		mv.addObject("Owner", list);
		mv.addObject("p", paging);
		mv.setViewName("admin/adminOwnerManager");
		return mv;
	}
}
