package com.travelmaker.stravel.support.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.support.model.vo.QnaVo;
@Repository("QnaDao")
public class QnaDao {
	private final String NM="supportMapper.";
	public int insertUserQna(SqlSessionTemplate mybatisSession, QnaVo qna) {
		return mybatisSession.insert(NM+"insertUserQna", qna);
	}
	public ArrayList<QnaVo> selectPagingQna(SqlSessionTemplate mybatisSession, PagingVo paging) {
		List<QnaVo> lists = mybatisSession.selectList(NM+"selectPagingQna", paging);
		return (ArrayList<QnaVo>) lists;
	}
	public int selectTotalPagingQna(SqlSessionTemplate mybatisSession) {
		return mybatisSession.selectOne(NM+"selectTotalPagingQna");
	}
	public int selectTotalPagingSearchQna(SqlSessionTemplate mybatisSession, PagingVo paging) {
		return mybatisSession.selectOne(NM+"selectTotalPagingSearchQna",paging);
	}
	public QnaVo selectAdminQnaOne(SqlSessionTemplate mybatisSession, int qna_no) {
		return mybatisSession.selectOne(NM+"selectAdminQnaOne", qna_no);
	}
	public int updateQnaAnswer(SqlSessionTemplate mybatisSession, QnaVo qna) {
		return mybatisSession.update(NM+"updateQnaAnswer", qna);
	}
	public ArrayList<QnaVo> selectPagingQnaUser(SqlSessionTemplate mybatisSession, PagingVo paging) {
		List<QnaVo> lists = mybatisSession.selectList(NM+"selectPagingQnaUsers", paging);
		return (ArrayList<QnaVo>) lists;
	}
	public int selectTotalPagingQnaUser(SqlSessionTemplate mybatisSession, PagingVo paging) {
		return mybatisSession.selectOne(NM+"selectTotalPagingQnaUser",paging);
	}
	public QnaVo selectUserQnaOne(SqlSessionTemplate mybatisSession, int qna_no) {
		return mybatisSession.selectOne(NM+"selectUserQnaOne", qna_no);
	}
	
}
