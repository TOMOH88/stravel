package com.travelmaker.stravel.calendar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CalendarController {
	
	/*@Autowired
	private CalendarService calendarService;*/
	
	@RequestMapping("mycalendar.do")
	public String moveCalendarPage() {
		return "calendar/mycalendar";
	}
	
	@RequestMapping("calendar.do")
	public String movecPage() {
		return "calendar/calendar";
	}
}
