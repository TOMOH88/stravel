package com.travelmaker.stravel.room.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;
import com.travelmaker.stravel.owner.model.vo.OwnerReview;
import com.travelmaker.stravel.room.model.vo.Room;
import com.travelmaker.stravel.room.model.vo.RoomImg;


@Repository("rd")
public class RoomDao {

	public int insertRoomSub(SqlSessionTemplate Session, Room room) {
		// TODO Auto-generated method stub
		
		return Session.insert("roomMapper.insertRoom",room);
		
	}

	public int insertRoomImg(SqlSessionTemplate Session, RoomImg roomImg) {
		// TODO Auto-generated method stub
		return Session.insert("roomMapper.insertRoomImg",roomImg);
	}

	public Owner selectOwner(SqlSessionTemplate Session,int owner_no) {
		// TODO Auto-generated method stub
		return Session.selectOne("ownerMapper.selectOwner", owner_no);
	}

	public ArrayList<OwnerImg> selectOwnerImg(SqlSessionTemplate Session, int owner_no) {
		List<OwnerImg> list = Session.selectList("ownerMapper.selectOwnerImg",owner_no);
		return (ArrayList<OwnerImg>)list;
	}

	public ArrayList<Room> selectRoom(SqlSessionTemplate Session, int owner_no) {
		List<Room> list = Session.selectList("roomMapper.selectRoom",owner_no);
		return (ArrayList<Room>)list;
	}

	public ArrayList<RoomImg> selectRoomImg(SqlSessionTemplate Session, int room_no) {
		List<RoomImg> list = Session.selectList("roomMapper.selectRoomImg",room_no);
		return (ArrayList<RoomImg>)list;
	}

	public ArrayList<OwnerReview> selectOwnerReview(SqlSessionTemplate Session, int owner_no) {
		List<OwnerReview> list = Session.selectList("ownerMapper.selectOwnerReview",owner_no);
		return (ArrayList<OwnerReview>)list;
	}

	public Room selectRsvInfo(SqlSessionTemplate Session,Room room) {
		// TODO Auto-generated method stub
		return Session.selectOne("roomMapper.selectRsvInfo",room);
	}


}
