package com.travelmaker.stravel.companion.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.companion.model.dao.CompanionDao;
import com.travelmaker.stravel.companion.model.vo.Companion;
import com.travelmaker.stravel.companion.model.vo.CompanionReply;

@Service("companionService")
public class CompanionServiceImpl implements CompanionService{
	//마이바티스 연동 객체 선언
	@Autowired
	private SqlSessionTemplate mybatisSession;
	@Autowired
	private CompanionDao compDao;
		
	@Override
	public Companion selectCompanion(int companion_no) {
		return compDao.selectCompanion(mybatisSession, companion_no);
	}
	
	@Override
	public int getListCount() {
		int listCount = compDao.getListCount(mybatisSession);
		return listCount;
	}

	@Override
	public ArrayList<Companion> selectCompanionList(int currentPage, int limit) {
		return compDao.companionList(mybatisSession, currentPage, limit);
	}

	@Override
	public int insertCompanion(Companion companion) {
		return compDao.insertCompanion(mybatisSession, companion);
	}

	@Override
	public int updateCompanion(Companion companion) {
		return compDao.updateCompanion(mybatisSession, companion);
	}
	
	@Override
	public int deleteCompanion(int companion_no) {
		return compDao.deleteCompanion(mybatisSession, companion_no);
	}
	
	
}
