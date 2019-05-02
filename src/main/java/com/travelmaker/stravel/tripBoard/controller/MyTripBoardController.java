package com.travelmaker.stravel.tripBoard.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.tripBoard.model.sevice.MyTripBoardService;
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoard;


@Controller
public class MyTripBoardController {

		//해당 클래스와 관련된 로그를 출력 또는 저장 하기 위한 로그 객체 생성
		private static final Logger logger = LoggerFactory.getLogger(MyTripBoardController.class);
		
		//MemberService DI
		@Autowired
		private MyTripBoardService myService;
		
		@RequestMapping("tripboard.do")
		public ModelAndView moveTripList(ModelAndView mv) {
			logger.info("일정자랑 접속");
			
			ArrayList<MyTripBoard> boardList = myService.tripBoardListAll();
			mv.addObject("list", boardList);
			
			mv.setViewName("MyTripBoard/tripBoardList");
			
			return mv;
		}
		
		
		
		@RequestMapping("writetrip.do")
		public String moveWriteTrip() {
			return "MyTripBoard/writeTripBoard";
		}
		
		@RequestMapping("tripboarddetail.do")
		public ModelAndView moveTripBoardDetail(ModelAndView mv, @RequestParam(name = "board_no") int board_no) {
			MyTripBoard myboard = myService.tripBoardDetail(board_no);
			
			mv.addObject("myboard", myboard);
			
			mv.setViewName("MyTripBoard/tripBoardDetail");
			
			return mv;
		}
		
		
}
