package com.travelmaker.stravel.calendar.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.calendar.model.vo.MyCalendar;

@Repository("CalendarDao")
public class CalendarDao {

	public int insertMyClaendar(SqlSessionTemplate sqlSession, MyCalendar mc) {
		return sqlSession.insert("mycalendarMapper.insertTitleDate", mc);
	}
}
