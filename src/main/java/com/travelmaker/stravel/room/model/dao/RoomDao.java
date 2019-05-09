package com.travelmaker.stravel.room.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.room.model.vo.Room;


@Repository("rd")
public class RoomDao {

	public int insertRoomSub(SqlSessionTemplate Session, Room room) {
		// TODO Auto-generated method stub
		
		return Session.insert("roomMapper.insertRoom",room);
		
	}


}
