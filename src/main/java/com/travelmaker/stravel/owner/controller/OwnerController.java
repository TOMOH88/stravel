package com.travelmaker.stravel.owner.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.owner.model.service.OwnerService;
import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;
import com.travelmaker.stravel.owner.model.vo.OwnerPaging;

@Controller
public class OwnerController {

	@Autowired
	private OwnerService os;
	
	@RequestMapping(value="roomList.do", method= {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView selectRoomList(ModelAndView mv,
			@RequestParam(required=false,defaultValue = "1") int page
			,@RequestParam(required=false,defaultValue = "1")int range
			,@RequestParam(name = "search",required=false)String search){
	
		
		if(search == null) {
		int listCnt = os.selectOwnerTotal();
		OwnerPaging paging = new OwnerPaging();
		paging.pageInfo(page, range, listCnt);
		ArrayList<Owner> roomList = os.selectRoomList(paging);
		ArrayList<OwnerImg> ownerImgList = os.selectOwnerImg();
		mv.addObject("roomList",roomList);
		mv.addObject("ownerImgList",ownerImgList);
		mv.addObject("pagination",paging);
		mv.setViewName("room/roomList");
		}else {
		int listCnt = os.selectOwnerTotal1(search);
		OwnerPaging paging = new OwnerPaging();
		paging.pageInfo(page, range, listCnt);
		ArrayList<Owner> roomList = os.selectRoomList1(paging,search);
		ArrayList<OwnerImg> ownerImgList = os.selectOwnerImg();
		mv.addObject("roomList",roomList);
		mv.addObject("ownerImgList",ownerImgList);
		mv.addObject("pagination",paging);
		mv.setViewName("room/roomList");	
		}
		return mv;
	}
	

}
