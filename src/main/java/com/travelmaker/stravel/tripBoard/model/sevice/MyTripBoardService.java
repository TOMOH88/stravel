﻿package com.travelmaker.stravel.tripBoard.model.sevice;

import java.util.ArrayList;

import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoard;
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoardImage;
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoardLike;
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoardReview;

public interface MyTripBoardService {

	ArrayList<MyTripBoard> tripBoardListAll();

	MyTripBoard tripBoardDetail(int board_no);

	int insertBoard(MyTripBoard board);

	int insertBoardImage(MyTripBoardImage myTripBoardImage);

	ArrayList<MyTripBoardReview> reviewListAll(int board_no);

	int insertReview(MyTripBoardReview review);

	void addReadCount(int board_no);

	int deleteReview(int answer_no);

	int deleteSchedule(int board_no);

	ArrayList<MyTripBoardImage> imageListAll(int board_no);

	int selectBoardNo();

	ArrayList<MyTripBoard> selectList(String board_title);

	

	

	

	

	

	

	
}
