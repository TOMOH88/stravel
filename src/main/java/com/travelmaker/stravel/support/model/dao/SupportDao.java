package com.travelmaker.stravel.support.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.support.model.vo.QnaVo;
@Repository("supportDao")
public class SupportDao {

	public int qnaInsert(SqlSessionTemplate mybatisSession, QnaVo qnavo) {
		return mybatisSession.insert("supportMapper.qnaInsert", qnavo);
	}

	public ArrayList<QnaVo> selectMyQnaList(SqlSessionTemplate mybatisSession, String userid) {
		List<QnaVo> list =mybatisSession.selectList("supportMapper.selectMyQnaList", userid);
		return (ArrayList<QnaVo>)list;
	}

	public QnaVo selectMyQnaListOne(SqlSessionTemplate mybatisSession, QnaVo qnaVo) {
		
		return mybatisSession.selectOne("supportMapper.selectMyQnaListOne", qnaVo);
	}
	
}
