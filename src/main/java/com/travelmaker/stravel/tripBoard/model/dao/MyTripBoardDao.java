package com.travelmaker.stravel.tripBoard.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoard;
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoardImage;
import com.travelmaker.stravel.tripBoard.model.vo.MyTripBoardLike;
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
	System.out.println("이미지 : " + myTripBoardImage);
	int result = session.insert("myTripBoardMapper.insertBoardImage",myTripBoardImage);
	System.out.println(result);
	return result;
}

public ArrayList<MyTripBoardReview> reviewListAll(SqlSessionTemplate session, int board_no) {
	List<MyTripBoardReview> list = session.selectList("myTripBoardMapper.reviewListAll", board_no);
	return (ArrayList<MyTripBoardReview>)list;
}

public int insertReview(SqlSessionTemplate session, MyTripBoardReview review) {

	return session.insert("myTripBoardMapper.insertReview", review);
}

public int addRedaount(int board_no, SqlSessionTemplate session) {
	
	return session.update("myTripBoardMapper.updateReadCount", board_no);
}

public int deleteReview(SqlSessionTemplate session, int answer_no) {

	return session.delete("myTripBoardMapper.deleteReview", answer_no);
}

public int deleteSchedule(SqlSessionTemplate session, int board_no) {

	return session.update("myTripBoardMapper.deleteSchedule", board_no);
}

public ArrayList<MyTripBoardImage> imageListAll(SqlSessionTemplate session, int board_no) {
	List<MyTripBoardImage> list = session.selectList("myTripBoardMapper.selectImageAll",board_no);
	return (ArrayList<MyTripBoardImage>) list;
}

public int selectBoardNo(SqlSessionTemplate session) {
	
	return session.selectOne("myTripBoardMapper.selectBoardNo");
}

public ArrayList<MyTripBoard> selectList(SqlSessionTemplate session, String board_title) {
	List<MyTripBoard> list = session.selectList("myTripBoardMapper.selectList", board_title);
	return (ArrayList<MyTripBoard>) list;
}








}
