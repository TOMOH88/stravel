package com.travelmaker.stravel.companion.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.json.simple.JSONArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.companion.model.service.CompanionReplyService;
import com.travelmaker.stravel.companion.model.service.CompanionService;
import com.travelmaker.stravel.companion.model.vo.Companion;
import com.travelmaker.stravel.companion.model.vo.CompanionReply;

@Controller
public class CompanionController {
	private static final Logger logger = 
			LoggerFactory.getLogger(CompanionController.class);
	
	//MemberService DI
		@Autowired
		private CompanionService companionService;
		@Autowired
		private CompanionReplyService companionReplyService;
		
	
	@RequestMapping("comp.do")
	public ModelAndView selectCompanionList(ModelAndView mv,
			@RequestParam(name="page" , required=false) Integer page) {
		
		logger.info("동행찾기 리스트");
		
		int currentPage = 1;
		if(page != null) {
		currentPage = page;
		}
		int limit = 10;
		int listCount = companionService.getListCount();
		
		ArrayList<Companion> compList = companionService.selectCompanionList(currentPage, limit);
		
		//총 페이지수 계산 : 목록이 마지막 1개일 때 1페이지로 처리
				int maxPage = (int)((double)listCount / limit + 0.9);
				//현재 페이지그룹(10개 페이지를 한 그룹으로 처리)에 
				//보여줄 시작 페이지 수
				//현재 페이지가 13이면 그룹은 11~20이 보여지게 함
				int startPage = (((int)((double)currentPage / limit + 0.9)) - 1)
								* limit + 1;
				int endPage = startPage + limit - 1;
				
				if(maxPage < endPage) {
					endPage = maxPage;
				}
		
		mv.addObject("compList", compList);
		mv.addObject("currentPage", currentPage);
		mv.addObject("maxPage", maxPage);
		mv.addObject("startPage", startPage);
		mv.addObject("endPage", endPage);
		mv.addObject("listCount", listCount);
		
		mv.setViewName("companion/companionListView");
		
		return mv;
	}
	
	
	@RequestMapping("compdetail.do")
	public ModelAndView selectCompanion(ModelAndView mv,
			@RequestParam(name="companion_no", required=false) int companion_no) {
		logger.info("동행찾기 글 상세보기");
		Companion companion = companionService.selectCompanion(companion_no);
		
		mv.setViewName("companion/companionDetailView");
		mv.addObject("companion", companion);
		
		return mv;
	}
	
	@RequestMapping(value="compReplyList.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public ResponseEntity companionList(@ModelAttribute("companionReply") 
	Companion companion, HttpServletRequest request) {
		HttpHeaders responseHeaders = new HttpHeaders();
		ArrayList<HashMap> hmlist = new ArrayList<HashMap>();
		
		//해당 게시물 댓글
		List<CompanionReply> companionReply = companionReplyService.selectCompanionReplyList(companion);
		
		if(companionReply.size() > 0) {
			for(int i = 0; i<companionReply.size(); i++) {
				HashMap hm = new HashMap();
				hm.put("companion_reply_no", companionReply.get(i).getCompanion_no());
				hm.put("companion_reply_ref", companionReply.get(i).getCompanion_reply_ref());
				hm.put("companion_reply_date", companionReply.get(i).getCompanion_reply_date());
				hm.put("user_email", companionReply.get(i).getUser_email());
				hm.put("conpanion_reply_content", companionReply.get(i).getCompanion_reply_content());
			
				hmlist.add(hm);
			}
			
			
		}
		
		JSONArray json = new JSONArray();
		return new ResponseEntity(json.toString(), responseHeaders, HttpStatus.CREATED);
	}
	
	@RequestMapping("compwrite.do")
	public String writeCompanion() {

		logger.info("동행찾기 글쓰기");
		
		return "companion/companionWriteForm";
		
	}
	
	@RequestMapping(value="compinsert.do", method=RequestMethod.POST)
	public String insertCompanion(Companion companion) {
		companionService.insertCompanion(companion);
		return "redirect:comp.do";
	}
	

	
	@RequestMapping(value="compupdate.do", method=RequestMethod.POST)
	public String updateCompanion(Companion companion) {
		companionService.updateCompanion(companion);
		return "redirect:comp.do";
	}
	
	@RequestMapping(value="compdelete.do", method=RequestMethod.POST)
	public String deleteCompanion(@RequestParam int companion_no) {
		companionService.deleteCompanion(companion_no);
		return "redirect:comp.do";
	}
	
	@RequestMapping(value="compreplyupdate.do", method=RequestMethod.POST)
	public String updateCompanionReply(CompanionReply companionreply) {
		companionReplyService.updateCompanionReply(companionreply);
		return "redirect:compdetail.do";
	}
	
	@RequestMapping(value="compreplydelete.do", method=RequestMethod.POST)
	public String deleteCompanionReply(@RequestParam int companion_reply_no) {
		companionReplyService.deleteCompanionReply(companion_reply_no);
		return "redirect:compdetail.do";
	}
	
	@RequestMapping(value="compreplyinsert.do", method=RequestMethod.POST)
	public String insertCompanionReply(CompanionReply companionreply) {
		companionReplyService.insertCompanionReply(companionreply);
		return "redirect:compdetail.do";
	}
	
	

}
