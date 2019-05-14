package com.travelmaker.stravel.companion.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.companion.model.vo.CompanionReply;

public interface CompanionReplyService {
	
	ArrayList<CompanionReply> selectCompanionReplyList(int companion_no);
	int insertCompanionReply(CompanionReply companionreply);
	int updateCompanionReply(CompanionReply companionreply);
	int deleteCompanionReply(int companionreply_no);
	CompanionReply selectCompanionReply(int companionreply_no);
	
}
