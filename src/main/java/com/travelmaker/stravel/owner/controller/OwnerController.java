package com.travelmaker.stravel.owner.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.owner.model.service.OwnerService;
import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;

@Controller
public class OwnerController {

	@Autowired
	private OwnerService os;
	
	@RequestMapping(value="roomList.do", method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView selectRoomList(ModelAndView mv, PagingVo paging){
		System.out.println(paging);
		
		ArrayList<Owner> roomList = os.selectRoomList(paging);

		mv.addObject("roomList", roomList);
		
		ArrayList<OwnerImg> ownerImgList = os.selectOwnerImg();
		System.out.println(ownerImgList);
		mv.addObject("ownerImgList", ownerImgList);
		mv.addObject("p",paging);
		mv.setViewName("room/roomList");
		return mv;
	}
	

}
