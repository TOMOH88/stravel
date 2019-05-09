package com.travelmaker.stravel.companion.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.companion.model.vo.Companion;
import com.travelmaker.stravel.companion.model.vo.CompanionReply;

public interface CompanionService {

	ArrayList<Companion> selectCompanionList(int currentPage, int limit);
	Companion selectCompanion(int companion_no);
	int getListCount();
	int insertCompanion(Companion companion);
	
	
}
