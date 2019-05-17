package com.travelmaker.stravel.calendar.model.service;

import com.travelmaker.stravel.calendar.model.vo.MyCalendar;

public interface CalendarService {
	int selectMyCalendar();
	int insertMyCalendar(MyCalendar mc);
}
