package com.travelmaker.stravel.room.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;
import com.travelmaker.stravel.owner.model.vo.OwnerReview;
import com.travelmaker.stravel.owner.model.vo.TouristVo;
import com.travelmaker.stravel.reservation.model.vo.Reservation;
import com.travelmaker.stravel.room.model.dao.RoomDao;
import com.travelmaker.stravel.room.model.vo.Room;
import com.travelmaker.stravel.room.model.vo.RoomImg;



@Service("rs")
public  class RoomServiceImpl implements RoomService {
	
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private RoomDao rd;
	


	@Override
	public int insertRoomSub(Room room) {
		// TODO Auto-generated method stub
		return rd.insertRoomSub(mybatisSession, room);
	}

	@Override
	public int insertRoomImg(RoomImg roomImg) {
		// TODO Auto-generated method stub
		return rd.insertRoomImg(mybatisSession,roomImg);
		
	}

	@Override
	public Owner selectOwner(int owner_no) {
		// TODO Auto-generated method stub
		return rd.selectOwner(mybatisSession,owner_no);
	}

	@Override
	public ArrayList<OwnerImg> selectOwnerImg(int owner_no) {
		// TODO Auto-generated method stub
		return rd.selectOwnerImg(mybatisSession,owner_no);
	}

	@Override
	public ArrayList<Room> selectRoom(int owner_no) {
		// TODO Auto-generated method stub
		return rd.selectRoom(mybatisSession,owner_no);
	}

	@Override
	public ArrayList<RoomImg> selectRoomImg(int owner_no) {
		// TODO Auto-generated method stub
		return rd.selectRoomImg(mybatisSession,owner_no);
		
	}

	@Override
	public ArrayList<OwnerReview> selectOwnerReview(int owner_no) {
		// TODO Auto-generated method stub
		return rd.selectOwnerReview(mybatisSession, owner_no);
	}

	@Override
	public Room selectRsvInfo(int room_no) {
		// TODO Auto-generated method stub
		return rd.selectRsvInfo(mybatisSession,room_no);
	}

	@Override
	public ArrayList<Reservation> selectOrderList(int owner_no) {
		// TODO Auto-generated method stub
		return rd.selectOrderList(mybatisSession,owner_no);
	}

	@Override
	public Room selectUpRoom(int room_no) {
		// TODO Auto-generated method stub
		return rd.selectUpRoom(mybatisSession,room_no);
	}

	@Override
	public ArrayList<RoomImg> selectUpRoomImg(int room_no) {
		// TODO Auto-generated method stub
		return rd.selectUpRoomImg(mybatisSession,room_no);
	}

	@Override
	public ArrayList<Reservation> selectPassOrderList(int owner_no) {
		// TODO Auto-generated method stub
		return rd.selectPassOrderList(mybatisSession,owner_no);
	}

	@Override
	public ArrayList<TouristVo> selectTourList(String address) {
		// TODO Auto-generated method stub
		return rd.selectTourList(mybatisSession, address);
	}





}
