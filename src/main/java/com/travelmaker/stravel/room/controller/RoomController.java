package com.travelmaker.stravel.room.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.travelmaker.stravel.room.model.service.RoomService;
import com.travelmaker.stravel.room.model.vo.Room;

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
	
	@RequestMapping("insertRoom.do")
	public String inserRoom() {
		return "room/insertRoom";
	}
	@RequestMapping("insertRoomSub.do")
	public String inserRoomSub(Room room, Model model) {
		int result = rs.inserRoomSub(room);
		System.out.println(result);
		if(result > 0 ) {
			return "room/ownerMain";
		}else {
			return "room/ownerMain";
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
}
