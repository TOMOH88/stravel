package com.travelmaker.stravel.support.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.support.model.vo.QnaVo;
@Repository("supportDao")
public class SupportDao {

	public int qnaInsert(SqlSessionTemplate mybatisSession, QnaVo qnavo) {
		return mybatisSession.insert("supportMapper.qnaInsert", qnavo);
	}
	
}
