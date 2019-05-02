package com.travelmaker.stravel.room.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoomController {

	@RequestMapping("oh.do")
	public String ohWorkList() {
		return "room/ohWorkList";
	}
	
	@RequestMapping("roomDetail.do")
	public String roomDetailView() {
		return "room/roomDetailView";
	}
	
	@RequestMapping("test.do")
	public String test() {
		return "room/test";
	}
	
	@RequestMapping("ownermain.do")
	public String ownerMain() {
		return "room/ownerMain";
	}
	
	@RequestMapping("orderList.do")
	public String orderList() {
		return "room/roomOrderList";
	}
}