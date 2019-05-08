package com.travelmaker.stravel.tripBoard.model.sevice;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.tripBoard.model.dao.MyTripBoardDao;
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoard;
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoardImage;
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoardReview;

@Service("MyTripBoardService")
public class MyTripBoardServiceImpl implements MyTripBoardService{
	
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private MyTripBoardDao boardDao;
	
	@Override
	public ArrayList<MyTripBoard> tripBoardListAll() {
		
		return boardDao.tripBoardListAll(mybatisSession);
	}

	@Override
	public MyTripBoard tripBoardDetail(int board_no) {
		
		return boardDao.selectBoard(mybatisSession, board_no);
	}

	@Override
	public int insertBoard(MyTripBoard board) {
		
		return boardDao.insertBoard(mybatisSession, board);
	}

	@Override
	public int insertBoardImage(MyTripBoardImage myTripBoardImage) {
		
		return boardDao.insertBoardImage(mybatisSession, myTripBoardImage);
	}

	@Override
	public ArrayList<MyTripBoardReview> reviewListAll() {
		
		return boardDao.reviewListAll(mybatisSession);
	}

	
}
