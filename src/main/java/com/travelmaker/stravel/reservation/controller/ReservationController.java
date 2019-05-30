package com.travelmaker.stravel.reservation.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.reservation.model.service.ReservationService;
import com.travelmaker.stravel.reservation.model.vo.Reservation;

@Controller
public class ReservationController {
	@Autowired
	private ReservationService rsvservice;
	
	@RequestMapping(value = "selectRsvDate.do", method = RequestMethod.POST)
	public @ResponseBody String[] selectRsvDate( Reservation reservation) {
		ArrayList<Reservation> list = rsvservice.selectRsvDate(reservation);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String DateArr[] = new String[list.size()];
		for(int i =0;i<list.size();i++) {
			DateArr[i] = df.format(list.get(i).getCheck_in());
		}
		System.out.println(DateArr);
		return DateArr; 
	}
	
	@RequestMapping(value="moveReservation.do", method=RequestMethod.POST)
	public ModelAndView insertRsv(ModelAndView mv, Reservation rs,
			@RequestParam(name="owner_no") int owner_no) {
		System.out.println("reservation" + rs);
		int result = rsvservice.insertRsv(rs);
		mv.addObject("rsvInfo",rs);
		if(result > 0) {
		/*mv.setViewName("payment/paymentView1");*/
		mv.setViewName("pay1.do");
		}else {
		mv.setViewName("room/roomDetail?owner_no="+owner_no);	
		}
		return mv;
	}
	
	@RequestMapping("updateStatus.do")
	public String updateStatus(@RequestParam(name="rsv_no")int rsv_no,
										  @RequestParam(name="owner_no")int owner_no) {
		int result = rsvservice.updateStatus(rsv_no);
		System.out.println(rsv_no + ", " + owner_no);
		String move ;
		if(result > 0 ) {
			move = "redirect:orderList.do?owner_no=" + owner_no ;
		}else {
			move = "redirect:orderList.do?owner_no=" + owner_no ;
		}
		return move;
	}
}
