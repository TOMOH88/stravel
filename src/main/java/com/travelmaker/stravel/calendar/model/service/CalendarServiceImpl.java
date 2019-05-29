package com.travelmaker.stravel.calendar.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.calendar.model.dao.CalendarDao;
import com.travelmaker.stravel.calendar.model.vo.MyCalendar;
import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;
import com.travelmaker.stravel.reservation.model.vo.Reservation;
import com.travelmaker.stravel.room.model.vo.Room;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotVo;

@Service("CalendarService")
public class CalendarServiceImpl implements CalendarService{
	
	@Autowired
	private SqlSessionTemplate mybatisSession;
	@Autowired
	private CalendarDao calendarDao;

	@Override
	public int createMyCalendar(MyCalendar mc) {
		return calendarDao.insertMyClaendar(mybatisSession, mc);
	}

	@Override
	public int updateMyCalendar(MyCalendar mc) {
		return calendarDao.updateMyCalendar(mybatisSession, mc);
	}

	@Override
	public MyCalendar selectreadMyCalendar(int mcnum) {
		return calendarDao.selectOneMyCalendar(mybatisSession, mcnum);
	}

	@Override
	public List<MyCalendar> MyCalendarAll() {
		return calendarDao.selectAllMyCalendar(mybatisSession);
	}

	@Override
	public int deleteMyCalendar(int mcnum) {
		return calendarDao.deleteMyCalendar(mybatisSession, mcnum);
	}

	@Override
	public ArrayList<TouristspotVo> selectTour() {
		return calendarDao.selectTouristspotList(mybatisSession);
	}

	@Override
	public ArrayList<Owner> searchForm(String owner_address) {
		return calendarDao.selectSearchlodgment(mybatisSession, owner_address);
	}

	@Override
	public ArrayList<OwnerImg> selectOwnerImg() {
		return calendarDao.selectOwnerImg(mybatisSession);
	}

}









