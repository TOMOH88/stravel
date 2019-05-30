package com.travelmaker.stravel.calendar.controller;


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
import com.travelmaker.stravel.calendar.model.vo.Calendar;
import com.travelmaker.stravel.calendar.model.vo.MyCalendar;
import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotVo;


@Controller
public class CalendarController {
	
	@Autowired
	private CalendarService calendarService;
	
	@RequestMapping("searchcalendar.do")
	public String movesCalendarPage() {
		return "calendar/searchcalendar";
	}
	
	@RequestMapping("scalendar.do")
	public String moveSearchCalendarPage() {
		return "calendar/scalendar";
	}
	
	@RequestMapping("searchlodgment2.do")
	public String moveSearchLodgment2Page() {
		return "calendar/searchlodgment";
	}
	
	@RequestMapping(value="searchlodgment.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String moveSearchLodgmentPage(@RequestParam("owner_address") String owner_address, Model mo) {
		ArrayList<Owner> ow = calendarService.searchForm(owner_address);
		ArrayList<OwnerImg> ow1 = calendarService.selectOwnerImg();
		mo.addAttribute("ow", ow);
		return "calendar/searchlodgment";
	}
	
	@RequestMapping(value="cview.do", method=RequestMethod.GET)
	public String moveCalendarViewPage(Model mo) {
		ArrayList<Calendar> ca = calendarService.selectCalendarList();
		mo.addAttribute("ca", ca);
		ArrayList<TouristspotVo> tour = calendarService.selectTour();
		mo.addAttribute("tour", tour);
		return "calendar/calendarViewList";
	}
	
	@RequestMapping(value="upview.do", method=RequestMethod.GET)
	public String moveCalendarUpViewPage(Model mo, @RequestParam(name= "mycalendar_no", required=false) int mycalendar_no) {
		MyCalendar mc = calendarService.selectreadMyCalendar(mycalendar_no);
		mo.addAttribute("mc", mc);
		System.out.println(mycalendar_no);
		return "calendar/updateCalendarView";
	}
	
	@RequestMapping(value="vcalendar.do", method=RequestMethod.POST)
	public String insertCalendar(MyCalendar mc) {
		if(calendarService.createMyCalendar(mc) > 0)
		return "redirect:mycalendar.do";
		else
		return "home";
	}
	
	@RequestMapping(value="updatecalendar.do", method={RequestMethod.POST, RequestMethod.GET})
	public String updateCaledar(MyCalendar mc, @RequestParam(name= "mycalendar_no", required=false) int mycalendar_no) {
		System.out.println(mc);
		if(calendarService.updateMyCalendar(mc) > 0) {
			return "redirect:mycalendar.do";
		}else {
			return "home";
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
	
	@RequestMapping(value="cview.do", method= RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public @ResponseBody ModelAndView atourPage(ModelAndView mv) {
		ArrayList<TouristspotVo> tour = calendarService.selectTour();
			mv.addObject("tour", tour);
			mv.addObject("code", "ok");
			mv.setViewName("jsonView");
		return mv;
	}
	
	@RequestMapping(value="aview.do", method=RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public @ResponseBody ModelAndView alodgmentPage(ModelAndView mv) {
		ArrayList<Owner> owner = calendarService.selectOwner();
		mv.addObject("owner", owner);
		mv.addObject("code", "ok");
		mv.setViewName("jsonView");
		return mv;
	}
	
	@RequestMapping(value="acalendar.do", method=RequestMethod.POST)
	public String acalendarMove(Calendar ca) {
		if(calendarService.insertCalendar(ca) > 0) {
		return "redirect:cview.do";
		}else {
		return "common/error";
		}
	}
	
	@RequestMapping(value="delDay.do", method=RequestMethod.GET)
	public String delDayPage(@RequestParam(name="calendar_no", required=false) int calendar_no) {
		calendarService.deleteDay(calendar_no);
		return "redirect:cview.do";
	}
	
	@RequestMapping(value="dayOne.do", method=RequestMethod.GET)
	public String dayOnePage(Model mo, @RequestParam(name="calendar_no", required=false) int calendar_no) {
		Calendar oca = calendarService.selectOneCalendar(calendar_no);
		mo.addAttribute("oca", oca);
		return "redirect:cview.do";
	}
	
	@RequestMapping(value="cinsert.do", method=RequestMethod.POST)
	public String cinsertPage(MyCalendar mc) {
		if(calendarService.calendarinsert(mc) > 0) {
		return "calendar/mycalendar";
		}else {
			return "common/error";
		}
	}
}
	







