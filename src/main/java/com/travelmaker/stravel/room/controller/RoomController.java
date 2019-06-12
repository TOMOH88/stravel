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
import com.travelmaker.stravel.owner.model.vo.TouristVo;
import com.travelmaker.stravel.reservation.model.vo.Reservation;
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
	public @ResponseBody Room selectRsvInfo(@RequestParam(name="room_no") int room_no) {
		Room result = rs.selectRsvInfo(room_no);
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
		ArrayList<RoomImg> roomImgList = rs.selectRoomImg(owner_no);
		mv.addObject("roomImgList",roomImgList);
		/*String address = ow.getOwner_address().substring(0,2);
		ArrayList<TouristVo> tourList = rs.selectTourList(address);
		System.out.println(tourList.size());
		mv.addObject("tourList",tourList);*/
		//후기정보
		ArrayList<OwnerReview> reviewList = rs.selectOwnerReview(owner_no);
		mv.addObject("reviewList",reviewList);
		
		mv.setViewName("room/roomDetailView");
		

		System.out.println(roomImgList);
		return mv;
	}
	
/*	@RequestMapping("test.do")
	public String test() {
		return "room/test";
	}*/
	
	@RequestMapping("ownerMain.do")
	public ModelAndView ownerMain(ModelAndView mv, @RequestParam(name="owner_no") int owner_no) {
		ArrayList<Reservation> list = rs.selectOrderList(owner_no);
		System.out.println(list);
		mv.addObject("orderList",list);
		mv.setViewName("room/ownerMain");
		return mv;
	}
	
	@RequestMapping("orderList.do")
	public ModelAndView orderList(ModelAndView mv, @RequestParam(name="owner_no") int owner_no) {
		ArrayList<Reservation> list = rs.selectOrderList(owner_no);
		System.out.println(list);
		mv.addObject("orderList",list);
		mv.setViewName("room/roomOrderList");
		return mv;
	}
	@RequestMapping("passOrderList.do")
	public ModelAndView passOrderList(ModelAndView mv, @RequestParam(name="owner_no")int owner_no ) {
		ArrayList<Reservation> list= rs.selectPassOrderList(owner_no);
		System.out.println(list);
		mv.addObject("passOrderList",list);
		mv.setViewName("room/roomOrderList");
		return mv;
	}
	
	@RequestMapping("insertRoom.do")
	public String inserRoom () {
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
		if(fileList.size() > 0) {
		for(int i=0;i<fileList.size();i++) {
			String originalFileName = fileList.get(i).getOriginalFilename();
			String renameFileName = room.getRoom_name() + "-" +UUIDUtil.GetUUID() +"." + FileUtil.getExtension(originalFileName);
			String savePath = request.getSession().getServletContext().getRealPath("/resources/files/roomImg");
			
			FileUtil.upLoadFile(fileList.get(i), originalFileName, savePath, renameFileName);
			
			roomImgList.add(new RoomImg(i+1,renameFileName,room.getRoom_no(),1));
			int result2 = rs.insertRoomImg(roomImgList.get(i));
		}
		}
		 
		return "redirect:insertRoom.do";
	}
	
	@RequestMapping("updateRoomList.do")
	public ModelAndView updateRoom(ModelAndView mv,@RequestParam(name="owner_no") int owner_no) {
		ArrayList<Room> roomList = rs.selectRoom(owner_no);
		mv.addObject("roomList",roomList);
		ArrayList<RoomImg> roomImgList = rs.selectRoomImg(owner_no);
		mv.addObject("roomImgList",roomImgList);
		
		mv.setViewName("room/updateRoomList");
		return mv;
	}
	@RequestMapping("updateRoomDetail.do")
	public ModelAndView selectRoom(ModelAndView mv,@RequestParam(name="room_no") int room_no) {
		
		Room room = rs.selectUpRoom(room_no);
		mv.addObject("room",room);
		ArrayList<RoomImg> list = rs.selectUpRoomImg(room_no);
		mv.addObject("roomImg",list);
		mv.setViewName("room/updateRoom");
		
		return mv;
	}
	@RequestMapping("updateOwner.do")
	public String updateOwner() {
		return "room/updateOwner";
	}
/*	@RequestMapping("updateRoomSub.do")
	public String updateRoomSub(Room room) {
		int result = rs.updateRoomSub(room);
		return "redirect:updateRoomList.do?owner_no=" + room.getOwner_no();
	}*/
	
	/*@RequestMapping("selectTravels.do")
	public @ResponseBody ArrayList<TouristVo> selectTourList(@RequestParam (name="touristspot_address")String str){
		String address = str.substring(0,7);
		TouristVo tv = new TouristVo();
		tv.setTouristSpot_address(address);
		ArrayList<TouristVo> list = rs.selectTourList(tv);
		ArrayList<TouristVo> result = new ArrayList<>();
		result.add(new TouristVo("투어","관악산","www.naver.com","4시","12시","메이즈 랜드-1jetsrfmqftk6.jpg","서울시 관악구 봉천동"));
		return result;
	}
	*/
	

}
