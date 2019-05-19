package com.travelmaker.stravel.calendar.model.service;

import java.util.List;

import com.travelmaker.stravel.calendar.model.vo.MyCalendar;

public interface CalendarService {
	List<MyCalendar> MyCalendarAll();
	MyCalendar selectreadMyCalendar(int mcnum);
	int createMyCalendar(MyCalendar mc);
	int updateMyCalendar(MyCalendar mc);
}
