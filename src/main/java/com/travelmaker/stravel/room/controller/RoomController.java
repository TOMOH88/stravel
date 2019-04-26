package com.travelmaker.stravel.room.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoomController {

	@RequestMapping("roomDetail.do")
	public String roomDetailView() {
		return "room/roomDetailView";
	}
}
