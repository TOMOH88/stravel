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
	public int insertReview(MyTripBoardReview review) {
		
		return boardDao.insertReview(mybatisSession, review);
	}

	@Override
	public ArrayList<MyTripBoardReview> reviewListAll(int board_no) {
		
		return boardDao.reviewListAll(mybatisSession, board_no);
	}

	@Override
	public void addReadCount(int board_no) {
		int result = boardDao.addRedaount(board_no, mybatisSession);
		
	}

	@Override
	public int deleteReview(int answer_no) {

		return boardDao.deleteReview(mybatisSession, answer_no);
	}

	@Override
	public int deleteSchedule(int board_no) {
		
		return boardDao.deleteSchedule(mybatisSession, board_no);
	}

	@Override
	public ArrayList<MyTripBoardImage> imageListAll(int board_no) {
		
		return boardDao.imageListAll(mybatisSession,board_no);
	}

	@Override
	public int selectBoardNo() {
		
		return boardDao.selectBoardNo(mybatisSession);
	}

	@Override
	public ArrayList<MyTripBoard> selectList(String board_title) {
		
		return boardDao.selectList(mybatisSession, board_title);
	}

	

	

	

	

	
}
