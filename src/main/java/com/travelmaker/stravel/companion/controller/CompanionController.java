package com.travelmaker.stravel.companion.controller;


import java.util.ArrayList;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.companion.model.service.CompanionService;
import com.travelmaker.stravel.companion.model.vo.Companion;

@Controller
public class CompanionController {
	private static final Logger logger = 
			LoggerFactory.getLogger(CompanionController.class);
	
	//MemberService DI
		@Autowired
		private CompanionService companionService;
	
	@RequestMapping("comp.do")
	public ModelAndView selectCompanionList(ModelAndView mv,
			@RequestParam(name="page" , required=false) Integer page) {
		
		logger.info("동행찾기 리스트");
		
		int currentPage = 1;
		if(page != null) {
		currentPage = page;
		};
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
		mv.addObject("companion", companion);
		mv.setViewName("companion/companionDetailView");
		return mv;
	}
	
/*	@RequestMapping("compinsert.do")
	public String insertCompanion(Companion companion) {

		logger.info("동행찾기 글쓰기");
		
		
		return
		
	}*/

}
