package com.travelmaker.stravel.companion.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.companion.model.dao.CompanionReplyDao;
import com.travelmaker.stravel.companion.model.vo.Companion;
import com.travelmaker.stravel.companion.model.vo.CompanionReply;

@Service("companionReplyService")
public class CompanionReplyServiceImpl implements CompanionReplyService{
	//마이바티스 연동 객체 선언
	@Autowired
	private SqlSessionTemplate mybatisSession;
	@Autowired
	private CompanionReplyDao compreplyDao;
	
	@Override
	public CompanionReply selectCompanionReply(int companion_reply_no) {
		return compreplyDao.selectCompanionReply(mybatisSession, companion_reply_no);
	}
	
	@Override
	public ArrayList<CompanionReply> selectCompanionReplyList(int companion_no){
		return compreplyDao.companionReplyList(mybatisSession, companion_no);
	}
	
	@Override
	public int insertCompanionReply(CompanionReply companionreply) {
		return compreplyDao.insertCompanionReply(mybatisSession, companionreply);
	}

	@Override
	public int updateCompanionReply(CompanionReply companionreply) {
		return compreplyDao.updateCompanionReply(mybatisSession, companionreply);
	}
	
	@Override
	public int deleteCompanionReply(int companion_reply_no) {
		return compreplyDao.deleteCompanionReply(mybatisSession, companion_reply_no);
	}
	
	@Override
	public int insertCompanionRereply(CompanionReply companionreply) {
		return compreplyDao.insertCompanionReply(mybatisSession, companionreply);
	}
	
	
	

	
}
