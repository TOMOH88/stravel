package com.travelmaker.stravel.support.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.support.model.dao.SupportDao;
import com.travelmaker.stravel.support.model.vo.QnaVo;
@Service("supportService")
public class SupportServiceImpl implements SupportService {
	@Autowired
	private SqlSessionTemplate mybatisSession;
	@Autowired
	private SupportDao supportdao;
	@Override
	public int qnaInsert(QnaVo qnavo) {
		return supportdao.qnaInsert(mybatisSession,qnavo);
	}

}
