package com.travelmaker.stravel.calendar.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.calendar.model.vo.MyCalendar;

@Repository("CalendarDao")
public class CalendarDao {

	public int insertMyClaendar(SqlSessionTemplate sqlSession, MyCalendar mc) {
		return sqlSession.insert("mycalendarMapper.insertTitleDate", mc);
	}

	public int updateMyCalendar(SqlSessionTemplate sqlSession, MyCalendar mc) {
		return sqlSession.update("mycalendarMapper.updateCalendar", mc);
	}

	public List<MyCalendar> selectAllMyCalendar(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("mycalendarMapper.selectAllMyCalendar");
	}
	
	public MyCalendar selectOneMyCalendar(SqlSessionTemplate sqlSession, int mcnum) {
		return sqlSession.selectOne("mycalendarMapper.selectOneMyCalendar", mcnum);
	}

	public int deleteMyCalendar(SqlSessionTemplate sqlSession, int mcnum) {
		return sqlSession.delete("mycalendarMapper.deleteMyCalendar", mcnum);
	}
}
