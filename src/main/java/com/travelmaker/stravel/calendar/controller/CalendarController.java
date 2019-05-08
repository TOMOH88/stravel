package com.travelmaker.stravel.calendar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CalendarController {
	
	/*@Autowired
	private CalendarService calendarService;*/
	
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
	
	@RequestMapping("test2.do")
	public String moveTest2() {
		return "calendar/test2";
	}
	
	@RequestMapping("vcalendar.do")
	public String moveViewCalendarPage() {
		return "calendar/calendarViewList";
	}
	
	@RequestMapping("qnalist.do")
	public String moveFaqListPage() {
		return "qna/qnaList";
	}
	
	@RequestMapping("faqlist1.do")
	public String moveQnaList1Page() {
		return "faq/faqList1";
	}
	
	@RequestMapping("faqlist2.do")
	public String moveQnaList2Page() {
		return "faq/faqList2";
	}
	
	@RequestMapping("faqlist3.do")
	public String moveQnaList3Page() {
		return "faq/faqList3";
	}
	
}








