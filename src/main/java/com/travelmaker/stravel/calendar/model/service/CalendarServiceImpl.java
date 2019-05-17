package com.travelmaker.stravel.calendar.model.service;

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
	public int selectMyCalendar() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertMyCalendar(MyCalendar mc) {
		return calendarDao.insertMyClaendar(mybatisSession, mc);
	}

}









