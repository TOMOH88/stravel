package com.travelmaker.stravel.reservation.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.reservation.model.vo.Reservation;
import com.travelmaker.stravel.room.model.vo.Room;

public interface ReservationService {

	ArrayList<Reservation> selectRsvDate(Reservation reservation);

	int insertRsv(Reservation rs);

	int updateStatus(int rsv_no);

	ArrayList<Reservation> selectRoomSales(int owner_no);


	
	

}
