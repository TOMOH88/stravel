package com.travelmaker.stravel.support.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.support.model.dao.QnaDao;
import com.travelmaker.stravel.support.model.vo.QnaVo;
@Service("QnaService")
public class QnaServiceImpl implements QnaService {
	@Autowired
	private SqlSessionTemplate mybatisSession;
	@Autowired
	private QnaDao qnadao;

	@Override
	public int insertUserQna(QnaVo qna) {
		return qnadao.insertUserQna(mybatisSession,qna);
	}

	@Override
	public ArrayList<QnaVo> selectPaging(PagingVo paging) {
		return qnadao.selectPagingQna(mybatisSession,paging);
	}

	@Override
	public int selectTotalPaging() {
		return qnadao.selectTotalPagingQna(mybatisSession);
	}

	@Override
	public int selectTotalPagingSearch(PagingVo paging) {
		return qnadao.selectTotalPagingSearchQna(mybatisSession,paging);
	}

	@Override
	public QnaVo selectAdminQnaOne(int qna_no) {
		return qnadao.selectAdminQnaOne(mybatisSession,qna_no);
	}

	@Override
	public int updateQnaAnswer(QnaVo qna) {
		return qnadao.updateQnaAnswer(mybatisSession,qna);
	}

	@Override
	public ArrayList<QnaVo> selectPagingQnaUser(PagingVo paging) {
		return qnadao.selectPagingQnaUser(mybatisSession,paging);
	}

	@Override
	public int selectTotalPagingQnaUser(PagingVo paging) {
		return qnadao.selectTotalPagingQnaUser(mybatisSession,paging);
	}

	@Override
	public QnaVo selectUserQnaOne(int qna_no) {
		return qnadao.selectUserQnaOne(mybatisSession,qna_no);
	}

}
