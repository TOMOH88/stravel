package com.travelmaker.stravel.companion.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.companion.model.vo.Companion;
import com.travelmaker.stravel.companion.model.vo.CompanionReply;

@Repository("companionReplyDao")
public class CompanionReplyDao {

	public CompanionReply selectCompanionReply(SqlSessionTemplate session, int companionreply_no) {
		return session.selectOne("companionMapper.selectOne", companionreply_no);
	}

	public ArrayList<CompanionReply> companionReplyList(SqlSessionTemplate session, int companion_no) {
		List<CompanionReply> list = session.selectList("companionMapper.selectCompanionReplyList", companion_no);
		
		return (ArrayList<CompanionReply>)list; 
	}

	public int insertCompanionReply(SqlSessionTemplate session, CompanionReply companionreply) {
		return session.insert("companionMapper.insertCompanionReply", companionreply);
	}

	public int updateCompanionReply(SqlSessionTemplate session, CompanionReply companionreply) {
		return session.update("companionMapper.updateCompanionReply", companionreply);
	}

	public int deleteCompanionReply(SqlSessionTemplate session, int companionreply_no) {
		return session.delete("companionMapper.deleteCompanionReply", companionreply_no);
	}
	
	public int insertCompanionRereply(SqlSessionTemplate session, CompanionReply companionreply) {
		return session.insert("companionMapper.insertCompanionRereply", companionreply);
	}



}
