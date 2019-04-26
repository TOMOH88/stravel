package com.travelmaker.stravel.tripNotice.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.travelmaker.stravel.tripNotice.model.sevice.MyTripNoticeService;

@Controller
public class MyTripNoticeController {

		//해당 클래스와 관련된 로그를 출력 또는 저장 하기 위한 로그 객체 생성
		private static final Logger logger = LoggerFactory.getLogger(MyTripNoticeController.class);
		
		//MemberService DI
		@Autowired
		private MyTripNoticeService myService;
		
		@RequestMapping("tripnotice.do")
		public String moveTripList() {
			logger.info("일정자랑 접속");
			return "MyTripNotice/tripNoticeList";
		}
		
		@RequestMapping("writetrip.do")
		public String moveWriteTrip() {
			return "MyTripNotice/writeTripNotice";
		}
		
		
}
