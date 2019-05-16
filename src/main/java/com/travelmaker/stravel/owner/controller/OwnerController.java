package com.travelmaker.stravel.owner.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.owner.model.service.OwnerService;
import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;

@Controller
public class OwnerController {

	@Autowired
	private OwnerService os;
	
	@RequestMapping("roomList.do")
	public ModelAndView selectRoomList(ModelAndView mv){
		
		ArrayList<Owner> roomList = os.selectRoomList();

		mv.addObject("roomList", roomList);
		
		ArrayList<OwnerImg> ownerImgList = os.selectOwnerImg();
		System.out.println(ownerImgList);
		mv.addObject("ownerImgList", ownerImgList);

		mv.setViewName("room/roomList");
		return mv;
	}
}
