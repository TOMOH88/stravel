package com.travelmaker.stravel.room.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.room.model.dao.RoomDao;
import com.travelmaker.stravel.room.model.vo.Room;



@Service("rs")
public  class RoomServiceImpl implements RoomService {
	
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private RoomDao rd;
	
	

	@Override
	public int inserRoomSub(Room room) {
		System.out.println(rd.insertRoomSub(mybatisSession, room));
		return rd.insertRoomSub(mybatisSession, room);
	}
}
