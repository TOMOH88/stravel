﻿package com.travelmaker.stravel.calendar.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.calendar.model.service.CalendarService;
import com.travelmaker.stravel.calendar.model.vo.MyCalendar;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotVo;


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
	
	@RequestMapping(value="cview.do", method=RequestMethod.GET)
	public String moveCalendarViewPage() {
		return "calendar/calendarViewList";
	}
	
	@RequestMapping(value="upview.do", method=RequestMethod.GET)
	public String moveCalendarUpViewPage(Model mo, @RequestParam(name= "mycalendar_no", required=false) int mycalendar_no) {
		MyCalendar mc = calendarService.selectreadMyCalendar(mycalendar_no);
		mo.addAttribute("mc", mc);
		System.out.println(mycalendar_no);
		return "calendar/updateCalendarView";
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
		if(calendarService.createMyCalendar(mc) > 0)
		return "redirect:mycalendar.do";
		else
		return "main";
	}
	
	@RequestMapping(value="updatecalendar.do", method={RequestMethod.POST, RequestMethod.GET})
	public String updateCaledar(MyCalendar mc, @RequestParam(name= "mycalendar_no", required=false) int mycalendar_no) {
		System.out.println(mc);
		if(calendarService.updateMyCalendar(mc) > 0) {
			return "redirect:mycalendar.do";
		}else {
			return "main";
		}
	}
	
	@RequestMapping(value="mycalendar.do", method=RequestMethod.GET)
	public ModelAndView myCaendarList(ModelAndView mv) {
		
		mv.setViewName("calendar/mycalendar");
		List<MyCalendar> mclist = calendarService.MyCalendarAll();
		mv.addObject("mclist",mclist);
		//System.out.println("mclist : " + mclist);
		return mv;
	}
	
	@RequestMapping(value="delmycalendar.do", method=RequestMethod.GET)
	public String deleteCalendar(@RequestParam(name="mycalendar_no", required=false) int mycalendar_no) {
		//System.out.println("controller" + mycalendar_no);
		calendarService.deleteMyCalendar(mycalendar_no);
		return "redirect:mycalendar.do";
	}
	
	@RequestMapping(value="cview.do", method= RequestMethod.POST)
	public ModelAndView atourPage(ModelAndView mv) {
		ArrayList<TouristspotVo> tour = calendarService.selectTour();
			mv.addObject("tour", tour);
			System.out.println(tour);
			mv.setViewName("jsonView");
		return mv;
	}
}
	







