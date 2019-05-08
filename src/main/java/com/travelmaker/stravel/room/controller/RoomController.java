package com.travelmaker.stravel.room.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.travelmaker.stravel.room.service.RoomService;
import com.travelmaker.stravel.room.vo.Room;

@Controller
public class RoomController {

	@Autowired
	private RoomService rs;
	
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
	
	@RequestMapping("ownerMain.do")
	public String ownerMain() {
		return "room/ownerMain";
	}
	
	@RequestMapping("orderList.do")
	public String orderList() {
		return "room/roomOrderList";
	}
	
	@RequestMapping(value="insertRoom.do", method=RequestMethod.POST)
	public String inserRoom(Room room) {
		int result = rs.insertRoom(room);
		
		if(result > 0) {
			return "room/insertRoom";
		}else {
			return "";
		}
	}
	
	@RequestMapping("updateRoom.do")
	public String updateRoom() {
		return "room/updateRoom";
	}
	
	@RequestMapping("updateOwner.do")
	public String updateOwner() {
		return "room/updateOwner";
	}
	@RequestMapping("roomList.do")
	public String roomList() {
		return "room/roomList";
	}
}
