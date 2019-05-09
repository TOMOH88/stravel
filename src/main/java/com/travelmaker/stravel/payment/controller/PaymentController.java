package com.travelmaker.stravel.payment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentController {
	
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
