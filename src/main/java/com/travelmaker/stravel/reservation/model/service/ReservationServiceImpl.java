package com.travelmaker.stravel.reservation.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.reservation.model.dao.ReservationDao;
import com.travelmaker.stravel.reservation.model.vo.Reservation;
import com.travelmaker.stravel.room.model.vo.Room;

@Service("rsvservice")
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	private ReservationDao rsvdao;
	
	@Autowired
	private SqlSessionTemplate mybatisSession;

	@Override
	public ArrayList<Reservation> selectRsvDate(Reservation reservation) {
		
		return rsvdao.selectRsvDate(mybatisSession,reservation);
	}
	
	
}
