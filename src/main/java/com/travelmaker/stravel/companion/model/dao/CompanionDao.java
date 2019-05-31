package com.travelmaker.stravel.companion.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.companion.model.vo.Companion;
import com.travelmaker.stravel.companion.model.vo.CompanionReply;

@Repository("companionDao")
public class CompanionDao {
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;

	
	public Companion selectCompanion(SqlSessionTemplate session, int companion_no) {
		return session.selectOne("companionMapper.selectOne", companion_no);
	}

	public ArrayList<Companion> companionList(SqlSessionTemplate session, int currentPage, int limit) {
		RowBounds rowBounds = new RowBounds(
				currentPage, limit);
		List<Companion> list = session.selectList("companionMapper.selectCompanionList", rowBounds);
		return (ArrayList<Companion>)list;
	}

	public int getListCount(SqlSessionTemplate session) {
		return session.selectOne("companionMapper.selectListCount");
	}

	public int insertCompanion(SqlSessionTemplate session, Companion companion) {
		return session.insert("companionMapper.insertCompanion", companion);
	}
	
	public int updateCompanion(SqlSessionTemplate session, Companion companion) {
		return session.update("companionMapper.updateCompanion", companion);
	}

	public int deleteCompanion(SqlSessionTemplate session, int companion_no) {
		return session.delete("companionMapper.deleteCompanion", companion_no);
	}

	public int updateProgress(SqlSessionTemplate session, Companion companion) {
		
		return session.update("companionMapper.updateProgress", companion);
	}



}
