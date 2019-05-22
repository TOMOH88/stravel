package com.travelmaker.stravel.room.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;
import com.travelmaker.stravel.owner.model.vo.OwnerReview;
import com.travelmaker.stravel.reservation.model.vo.Reservation;
import com.travelmaker.stravel.room.model.vo.Room;
import com.travelmaker.stravel.room.model.vo.RoomImg;

public interface RoomService {

	int insertRoomSub(Room room);



	int insertRoomImg(RoomImg roomImg);



	Owner selectOwner(int owner_no);



	ArrayList<OwnerImg> selectOwnerImg(int owner_no);



	ArrayList<Room> selectRoom(int owner_no);



	ArrayList<RoomImg> selectRoomImg(int owner_no);



	ArrayList<OwnerReview> selectOwnerReview(int owner_no);



	Room selectRsvInfo(Room room);



	ArrayList<Reservation> selectOrderList(int owner_no);



	Room selectUpRoom(int room_no);



	ArrayList<RoomImg> selectUpRoomImg(int room_no);
	
}


