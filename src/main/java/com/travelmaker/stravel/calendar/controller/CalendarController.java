package com.travelmaker.stravel.calendar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.travelmaker.stravel.calendar.model.service.CalendarService;
import com.travelmaker.stravel.calendar.model.vo.MyCalendar;


@Controller
public class CalendarController {
	
	@Autowired
	private CalendarService calendarService;
	
	@RequestMapping("mycalendar.do")
	public String movemyCalendarPage() {
		return "calendar/mycalendar";
	}
	
	@RequestMapping("scalendar.do")
	public String movesCalendarPage() {
		return "calendar/scalendar";
	}
	
	@RequestMapping("searchcalendar.do")
	public String moveSearchCalendarPage() {
		return "calendar/searchcalendar";
	}
	
	@RequestMapping("upcalendar.do")
	public String moveUpCalendarPage() {
		return "calendar/updatecalendar";
	}
	
	@RequestMapping("searchlodgment.do")
	public String moveSearchLodgmentPage() {
		return "calendar/searchlodgment";
	}
	
	@RequestMapping("adminMain.do")
	public String moveTest() {
		return "calendar/test";
	}
	
/*	@RequestMapping("adminMain.do")
	public String moveTest() {
		return "calendar/test";
	}
	@RequestMapping("test2.do")
	public String moveTest2() {
		return "calendar/test2";
	}
	
	@RequestMapping("vcalendar.do")
	public String moveViewCalendarPage() {
		return "calendar/calendarViewList";
	}
	
	@RequestMapping("adminMain.do")
	public String moveTest() {
		return "calendar/test";
	}
	
	@RequestMapping("test2.do")
	public String moveTest2() {
		return "calendar/test2";
	}*/
	
	/*	@RequestMapping("faqlist3.do")
	public String moveQnaList3Page() {
		return "faq/faqList3";
	}*/
	
	@RequestMapping(value="vcalendar.do", method=RequestMethod.POST)
	public String insertCalendar(MyCalendar mc) {
		System.out.println(mc);
		if(calendarService.createMyCalendar(mc) > 0)
		return "calendar/calendarViewList";
		else
		return "main.do";
	}
	
	@RequestMapping(value="updatecalendar.do", method=RequestMethod.POST)
	public String updateinsertCaledar(@ModelAttribute MyCalendar mc) {
		calendarService.updateMyCalendar(mc);
		return "mycalendar.do";
	}
	
	
}








