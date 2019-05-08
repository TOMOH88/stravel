package com.travelmaker.stravel.tripBoard.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoard;
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoardImage;
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoardReview;

@Repository("MyTripBoardDao")
public class MyTripBoardDao {

public ArrayList<MyTripBoard> tripBoardListAll(SqlSessionTemplate mybatisSession) {
		
		List<MyTripBoard> list = mybatisSession.selectList("myTripBoardMapper.selectBoardList");
		
		return (ArrayList<MyTripBoard>)list;
		
	}

public MyTripBoard selectBoard(SqlSessionTemplate session, int board_no) {
	
	return session.selectOne("myTripBoardMapper.selectBoard", board_no);
}

public int insertBoard(SqlSessionTemplate session, MyTripBoard board) {

	return session.insert("myTripBoardMapper.insertBoard", board);
}

public int insertBoardImage(SqlSessionTemplate session, MyTripBoardImage myTripBoardImage) {

	return session.insert("myTripBoardMapper.insertBoardImage",myTripBoardImage);
}

public ArrayList<MyTripBoardReview> reviewListAll(SqlSessionTemplate session) {
	List<MyTripBoardReview> list = session.selectList("myTripBoardMapper.reviewListAll");
	return (ArrayList<MyTripBoardReview>)list;
}


}
