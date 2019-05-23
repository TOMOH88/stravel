package com.travelmaker.stravel.calendar.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.calendar.model.service.CalendarService;
import com.travelmaker.stravel.calendar.model.vo.MyCalendar;


@Controller
public class CalendarController {
	
	@Autowired
	private CalendarService calendarService;
	
	@RequestMapping("scalendar.do")
	public String movesCalendarPage() {
		return "calendar/scalendar";
	}
	
	@RequestMapping("searchcalendar.do")
	public String moveSearchCalendarPage() {
		return "calendar/searchcalendar";
	}
	
	@RequestMapping("searchlodgment.do")
	public String moveSearchLodgmentPage() {
		return "calendar/searchlodgment";
	}
	
	@RequestMapping("adminMain.do")
	public String moveTest() {
		return "calendar/test";
	}
	
	@RequestMapping("cview.do")
	public String moveCalendarViewPage() {
		return "calendar/calendarViewList";
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
	
	/*@RequestMapping(value="vcalendar.do", method= {RequestMethod.POST})
	public String insertCalendar(MyCalendar mc) {
		if(calendarService.createMyCalendar(mc) > 0)
		return "calendar/mycalendar";
		else
		return "main";
	}*/
	
	@RequestMapping(value="updatecalendar.do", method=RequestMethod.GET)
	public String updateinsertCaledar(@ModelAttribute("mc") MyCalendar mc) {
		calendarService.updateMyCalendar(mc);
		return "calendar/calendarViewList";
	}
	
	@RequestMapping(value="mycalendar.do", method=RequestMethod.GET)
	public ModelAndView myCaendarList(ModelAndView mv) {
		
		mv.setViewName("calendar/mycalendar");
		List<MyCalendar> mclist = calendarService.MyCalendarAll();
		mv.addObject("mclist",mclist);
		System.out.println("mclist : " + mclist);
		return mv;
	}
	
	@RequestMapping(value="delmycalendar.do", method=RequestMethod.GET)
	public String deleteCalendar(@RequestParam(name="mycalendar_no", required=false) int mycalendar_no) {
		System.out.println("controller" + mycalendar_no);
		calendarService.deleteMyCalendar(mycalendar_no);
		return "redirect:mycalendar.do";
	}
}
	







