package com.travelmaker.stravel.companion.model.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.SelectKey;

import com.travelmaker.stravel.companion.model.vo.Companion;
import com.travelmaker.stravel.companion.model.vo.CompanionReply;

public interface CompanionService {

	ArrayList<Companion> selectCompanionList(int currentPage, int limit);
	Companion selectCompanion(int companion_no);
	int getListCount();
	int insertCompanion(Companion companion);
	int updateCompanion(Companion companion);
	int deleteCompanion(int companion_no);
	
	
}
