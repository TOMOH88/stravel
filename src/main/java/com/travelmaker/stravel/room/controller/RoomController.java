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
	
	@RequestMapping("ownerMain.do")
	public String ownerMain() {
		return "room/ownerMain";
	}
	
	@RequestMapping("orderList.do")
	public String orderList() {
		return "room/roomOrderList";
	}
	
	@RequestMapping("insertRoom.do")
	public String inserRoom() {
		return "room/insertRoom";
	}
	
	@RequestMapping("updateRoom.do")
	public String updateRoom() {
		return "room/updateRoom";
	}
	
	@RequestMapping("updateOwner.do")
	public String updateOwner() {
		return "room/updateOwner";
	}
}
