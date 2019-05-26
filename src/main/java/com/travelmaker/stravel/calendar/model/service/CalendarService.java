package com.travelmaker.stravel.calendar.model.service;

import java.util.ArrayList;
import java.util.List;

import com.travelmaker.stravel.calendar.model.vo.MyCalendar;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotVo;

public interface CalendarService {
	List<MyCalendar> MyCalendarAll();
	MyCalendar selectreadMyCalendar(int mcnum);
	int createMyCalendar(MyCalendar mc);
	int updateMyCalendar(MyCalendar mc);
	int deleteMyCalendar(int mcnum);
	ArrayList<TouristspotVo> selectTour();
}
