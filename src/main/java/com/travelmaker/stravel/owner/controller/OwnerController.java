package com.travelmaker.stravel.owner.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public ModelAndView selectRoomList(ModelAndView mv, OwnerPaging paging) {
		if(paging.getSearchCategory() == null && paging.getItems() == null || paging.getSearchCategory() == "" && paging.getItems() == "") {
			ArrayList<Owner> roomList = os.selectRoomList(paging);
			ArrayList<OwnerImg> ownerImgList = os.selectOwnerImg();
			paging.setTotal(os.selectOwnerTotal());	
			System.out.println("모든 게시글 "+roomList.size()+"="+paging.getTotal());
			mv.addObject("roomList",roomList);
			mv.addObject("ownerImgList",ownerImgList);
	        mv.addObject("p", paging);
	        mv.setViewName("room/roomList");
		}else{
			ArrayList<Owner> roomList = os.selectRoomList(paging);
			ArrayList<OwnerImg> ownerImgList = os.selectOwnerImg();
			paging.setTotal(os.selectOwnerTotal1(paging));	
			System.out.println("검색된 게시글"+roomList.size()+"="+paging.getTotal());
			mv.addObject("roomList",roomList);
			mv.addObject("ownerImgList",ownerImgList);
	        mv.addObject("p", paging);
	        mv.setViewName("room/roomList");
		}
        System.out.println(paging.getTotal());
        return mv;
	}
	
	@RequestMapping(value="binsert.do", method=RequestMethod.POST)
	public String binsertPage(Owner ow) {
		System.out.println("ow : " + ow);
		if(os.insertOwner(ow) > 0) {
			return "home";
		}else {
			return "common/error";
		}
		
	}
}
