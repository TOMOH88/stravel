package com.travelmaker.stravel.reservation.model.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.reservation.model.vo.Reservation;

@Repository("rsvdao")
public class ReservationDao {

	public ArrayList<Reservation> selectRsvDate(SqlSessionTemplate Session, Reservation reservation) {
		List<Reservation> list = Session.selectList("roomMapper.selectRsvDate",reservation);
	System.out.println("daodate"+list);
		/*List<Reservation> resultList = new ArrayList<Reservation>();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		for(int i =0; i < list.size();i++) {
			resultList.get(i).setCheck_in(sf.format(list.get(i).getCheck_in()));
			resultList.get(i).setCheck_out(sf.format(list.get(i).getCheck_out()));
		}*/
		return (ArrayList<Reservation>)list;
	}

}
