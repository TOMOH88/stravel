package com.travelmaker.stravel.payment.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.member.model.vo.Member;
import com.travelmaker.stravel.reservation.model.vo.Reservation;

@Controller
public class PaymentController {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(PaymentController.class);
	

	
	
	
	@RequestMapping("pay2.do")
	public String PaymentView2() {
		return "payment/paymentView2";
	}
	
	@RequestMapping("test.do")
	public String testPay() {
		return "payment/testpay";
	}
	
	@RequestMapping("paylist.do")
	public String payList() {
		return "payment/paymentList";
	}

}
