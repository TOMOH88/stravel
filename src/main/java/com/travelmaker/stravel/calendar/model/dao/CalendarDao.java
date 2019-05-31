package com.travelmaker.stravel.calendar.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.calendar.model.vo.Calendar;
import com.travelmaker.stravel.calendar.model.vo.MyCalendar;
import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;
import com.travelmaker.stravel.restaurant.model.vo.Restaurant;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotVo;

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

	public ArrayList<TouristspotVo> selectTouristspotList(SqlSessionTemplate sqlSession) {
		List<TouristspotVo> list = sqlSession.selectList("mycalendarMapper.selectTouristspotList");
		return (ArrayList<TouristspotVo>)list;
	}

	public ArrayList<Owner> selectSearchlodgment(SqlSessionTemplate sqlSession, String owner_address) {
		List<Owner> list = sqlSession.selectList("mycalendarMapper.selectSearchlodgment", owner_address);
		return (ArrayList<Owner>)list;
	}

	public ArrayList<OwnerImg> selectOwnerImg(SqlSessionTemplate sqlSession) {
		List<OwnerImg> list = sqlSession.selectList("mycalendarMapper.selectOwnerImg");
		return (ArrayList<OwnerImg>)list;
	}

	public ArrayList<Owner> selectOwner(SqlSessionTemplate sqlSession) {
		List<Owner> list = sqlSession.selectList("mycalendarMapper.selectOwner");
		return (ArrayList<Owner>)list;
	}

	public int insertClaendar(SqlSessionTemplate sqlSession, Calendar ca) {
		return sqlSession.insert("mycalendarMapper.insertCalendar", ca);
	}

	public ArrayList<Calendar> selectCalendarList(SqlSessionTemplate sqlSession) {
		List<Calendar> list = sqlSession.selectList("mycalendarMapper.selectCalendarList");
		return (ArrayList<Calendar>)list;
	}

	public int deleteDay(SqlSessionTemplate sqlSession, int calendar_no) {
		return sqlSession.delete("mycalendarMapper.deleteDay", calendar_no);
	}

	public Calendar selectOneCalendar(SqlSessionTemplate sqlSession, int calendar_no) {
		return sqlSession.selectOne("mycalendarMapper.selectOneDay", calendar_no);
	}

	public int insertMyCalendarTitle(SqlSessionTemplate sqlSession, MyCalendar mc) {
		return sqlSession.insert("mycalendarMapper.insertTitlecalendar", mc);
	}

	public int updateMyCalendarTitle(SqlSessionTemplate sqlSession, MyCalendar mc) {
		return sqlSession.update("mycalendarMapper.updateTitlecalendar", mc);
	}

	public MyCalendar selectoneMyCalendar(SqlSessionTemplate sqlSession, String mycalendar_title) {
		return sqlSession.selectOne("mycalendarMapper.selectOneTitle", mycalendar_title);
	}

	public ArrayList<Restaurant> selectRestList(SqlSessionTemplate sqlSession) {
		List<Restaurant> list = sqlSession.selectList("mycalendarMapper.selectrestList");
		return (ArrayList<Restaurant>)list;
	}
}
