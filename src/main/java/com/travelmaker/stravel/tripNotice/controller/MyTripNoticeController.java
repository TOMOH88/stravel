package com.travelmaker.stravel.tripNotice.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.tripNotice.model.sevice.MyTripNoticeService;
import com.travelmaker.stravel.tripNotice.model.vo.MyTripNotice;

@Controller
public class MyTripNoticeController {

		//해당 클래스와 관련된 로그를 출력 또는 저장 하기 위한 로그 객체 생성
		private static final Logger logger = LoggerFactory.getLogger(MyTripNoticeController.class);
		
		//MemberService DI
		@Autowired
		private MyTripNoticeService myService;
		
		@RequestMapping("tripnotice.do")
		public ModelAndView moveTripList(ModelAndView mv) {
			logger.info("일정자랑 접속");
			
			ArrayList<MyTripNotice> noticeList = myService.tripNoticeListAll();
			mv.addObject("list", noticeList);
			
			mv.setViewName("MyTripNotice/tripNoticeList");
			
			return mv;
		}
		
		/*@RequestMapping("tripnotice.do")
		public String moveTripList() {
			return "MyTripNotice/tripNoticeList";
		}*/
		
		@RequestMapping("writetrip.do")
		public String moveWriteTrip() {
			return "MyTripNotice/writeTripNotice";
		}
		
		@RequestMapping("tripnoticedetail.do")
		public String movetripnoticedetail() {
			return "MyTripNotice/tripNoticeDetail";
		}
}
