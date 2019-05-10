package com.travelmaker.stravel.support.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.support.model.dao.QnaDao;
import com.travelmaker.stravel.support.model.vo.QnaVo;
@Service("QnaService")
public class QnaServiceImpl implements QnaService {
	@Autowired
	private SqlSessionTemplate mybatisSession;
	@Autowired
	private QnaDao qnadao;
	@Override
	public int qnaInsert(QnaVo qnavo) {
		return qnadao.qnaInsert(mybatisSession,qnavo);
	}
	@Override
	public ArrayList<QnaVo> selectMyQnaList(String userid) {
		
		return qnadao.selectMyQnaList(mybatisSession,userid);
	}
	@Override
	public QnaVo selectMyQnaListOne(QnaVo qnaVo) {
		return qnadao.selectMyQnaListOne(mybatisSession,qnaVo);
	}

}
