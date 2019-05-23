package com.travelmaker.stravel.reservation.controller;

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
	public @ResponseBody ArrayList<Reservation> selectRsvDate( Reservation reservation) {
		ArrayList<Reservation> list = rsvservice.selectRsvDate(reservation);
		System.out.println("reservationController" + list);
		return list; 
	}
}
