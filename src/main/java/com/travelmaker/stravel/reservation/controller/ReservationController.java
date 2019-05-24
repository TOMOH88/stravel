package com.travelmaker.stravel.reservation.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
}
