package com.travelmaker.stravel.calendar.model.service;

import java.util.ArrayList;
import java.util.List;

import com.travelmaker.stravel.calendar.model.vo.MyCalendar;
import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;
import com.travelmaker.stravel.reservation.model.vo.Reservation;
import com.travelmaker.stravel.room.model.vo.Room;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotVo;

public interface CalendarService {
	List<MyCalendar> MyCalendarAll();
	MyCalendar selectreadMyCalendar(int mcnum);
	int createMyCalendar(MyCalendar mc);
	int updateMyCalendar(MyCalendar mc);
	int deleteMyCalendar(int mcnum);
	ArrayList<TouristspotVo> selectTour();
	ArrayList<Owner> searchForm(String owner_address);
	ArrayList<OwnerImg> selectOwnerImg();
}
