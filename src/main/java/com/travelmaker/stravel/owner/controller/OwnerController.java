package com.travelmaker.stravel.owner.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.common.FileUtil;
import com.travelmaker.stravel.common.UUIDUtil;
import com.travelmaker.stravel.owner.model.service.OwnerService;
import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;
import com.travelmaker.stravel.owner.model.vo.OwnerPaging;
import com.travelmaker.stravel.room.model.vo.RoomImg;

@Controller
public class OwnerController {

	@Autowired
	private OwnerService os;
	@Autowired
	BCryptPasswordEncoder bcryptpasswordEncoder;
	
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
	@RequestMapping("updateAddress.do")
	public String updateAddress(Owner owner,MultipartHttpServletRequest mtfRequest,HttpServletRequest request) {
		System.out.println(owner);
		ArrayList<OwnerImg> ownerImgList = new ArrayList<>();
		int result = os.updateAddress(owner);
		List<MultipartFile> fileList = mtfRequest.getFiles("owner_img");
		for(int i=0;i<fileList.size();i++) {
			String originalFileName = fileList.get(i).getOriginalFilename();
			String renameFileName = owner.getOwner_name() + "-" +UUIDUtil.GetUUID() +"." + FileUtil.getExtension(originalFileName);
			String savePath = request.getSession().getServletContext().getRealPath("/resources/files/roomImg");
			
			FileUtil.upLoadFile(fileList.get(i), originalFileName, savePath, renameFileName);
	
			ownerImgList.add(new OwnerImg(i+1,renameFileName,owner.getOwner_no()));
			int result2 = os.insertOwnerImg(ownerImgList.get(i));
		}
		int result11 =os.updateAddress(owner);
		return "redirect:ownerMain.do?owner_no="+owner.getOwner_no();
	}
	
	@RequestMapping("moveExtraUpdate.do")
	public String moveExtraUpdate() {
		return "room/extraUpdate";
	@RequestMapping(value="binsert.do", method=RequestMethod.POST)
	public String binsertPage(Owner ow) {
		System.out.println("ow : " + ow);
		ow.setOwner_password(bcryptpasswordEncoder.encode(ow.getOwner_password()));
		if(os.insertOwner(ow) > 0) {
			return "home";
		}else {
			return "common/error";
		}
		
	}
	@RequestMapping(value="ologin.do", method=RequestMethod.POST)
	public String ologinMethod(Owner ow, 
			HttpSession session, SessionStatus status) {
		String path ="home";
		
		Owner owner = os.selectOLogin(ow);
		if(owner != null) {
			session.setAttribute("loginOwner", owner);
			status.setComplete();
			path= "home";
			}
		return path;
		
	}
}
