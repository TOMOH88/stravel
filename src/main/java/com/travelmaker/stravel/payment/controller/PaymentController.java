package com.travelmaker.stravel.payment.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.travelmaker.stravel.companion.controller.CompanionController;

@Controller
public class PaymentController {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(PaymentController.class);
	
	@RequestMapping("pay1.do")
	public String PaymentView1() {
		return "payment/paymentView1";
	}
	
	@RequestMapping("pay2.do")
	public String PaymentView2() {
		return "payment/paymentView2";
	}
	
	@RequestMapping("pay3.do")
	public String PaymentView3() {
		return "payment/paymentView3";
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
