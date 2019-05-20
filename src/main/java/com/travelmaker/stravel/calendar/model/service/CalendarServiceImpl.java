package com.travelmaker.stravel.calendar.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.calendar.model.dao.CalendarDao;
import com.travelmaker.stravel.calendar.model.vo.MyCalendar;

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
}









