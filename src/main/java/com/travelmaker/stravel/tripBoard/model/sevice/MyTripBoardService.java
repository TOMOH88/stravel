package com.travelmaker.stravel.tripBoard.model.sevice;

import java.util.ArrayList;

import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoard;

public interface MyTripBoardService {

	ArrayList<MyTripBoard> tripBoardListAll();

	MyTripBoard tripBoardDetail(int board_no);

	
}
