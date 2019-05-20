package com.travelmaker.stravel.room.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.common.FileUtil;
import com.travelmaker.stravel.common.UUIDUtil;
import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;
import com.travelmaker.stravel.owner.model.vo.OwnerReview;
import com.travelmaker.stravel.room.model.service.RoomService;
import com.travelmaker.stravel.room.model.vo.Room;
import com.travelmaker.stravel.room.model.vo.RoomImg;

@Controller
public class RoomController {
	
	@Autowired
	private RoomService rs;

	@RequestMapping("oh.do")
	public String ohWorkList() {
		return "room/ohWorkList";
	}
	@RequestMapping(value="selectRsvInfo.do",method=RequestMethod.POST)
	public @ResponseBody Room selectRsvInfo(Room room) {
		Room result = rs.selectRsvInfo(room);
		System.out.println("result" + result);
	return	 result;
	}
	@RequestMapping("roomDetail.do")
	public ModelAndView roomDetailView(ModelAndView mv , @RequestParam(name = "owner_no" ) int owner_no) {
		//사업자정보
		Owner ow = rs.selectOwner(owner_no);
		mv.addObject("owner",ow);
		//사업자대표이미지정보
		ArrayList<OwnerImg> ownerImgList = rs.selectOwnerImg(owner_no);
		mv.addObject("ownerImg",ownerImgList);
		//사업자 방정보
		ArrayList<Room> roomList = rs.selectRoom(owner_no);
		mv.addObject("roomList",roomList);
		ArrayList<RoomImg> roomImgList = new ArrayList<>();
		
		for(int i =0; i<roomList.size();i++) {
			roomImgList = rs.selectRoomImg(roomList.get(i).getRoom_no());
			mv.addObject("roomImgList",roomImgList);
		}
		//후기정보
		ArrayList<OwnerReview> reviewList = rs.selectOwnerReview(owner_no);
		mv.addObject("reviewList",reviewList);
		
		mv.setViewName("room/roomDetailView");
		

		System.out.println(roomImgList);
		return mv;
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
	@RequestMapping(value="insertRoomSub.do",method=RequestMethod.POST)
	public String inserRoomSub(Room room,MultipartHttpServletRequest mtfRequest,HttpServletRequest request) {
		
		int result = rs.insertRoomSub(room);
		if(result <=0) {
			return "room/ownerMain";
		}
		//사진연속업로드
		ArrayList<RoomImg> roomImgList = new ArrayList<>();
		List<MultipartFile> fileList = mtfRequest.getFiles("roomImg");
		for(int i=0;i<fileList.size();i++) {
			String originalFileName = fileList.get(i).getOriginalFilename();
			String renameFileName = room.getRoom_name() + "-" +UUIDUtil.GetUUID() +"." + FileUtil.getExtension(originalFileName);
			String savePath = request.getSession().getServletContext().getRealPath("/resources/files/roomImg");
			
			FileUtil.upLoadFile(fileList.get(i), originalFileName, savePath, renameFileName);
			
			roomImgList.add(new RoomImg(i+1,renameFileName,room.getRoom_no()));
			int result2 = rs.insertRoomImg(roomImgList.get(i));
		}

		 
		return "redirect:insertRoom.do";
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
