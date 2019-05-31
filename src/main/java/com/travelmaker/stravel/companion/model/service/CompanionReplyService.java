package com.travelmaker.stravel.companion.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.companion.model.vo.Companion;
import com.travelmaker.stravel.companion.model.vo.CompanionReply;

public interface CompanionReplyService {
	
	ArrayList<CompanionReply> selectCompanionReplyList(int companion_no);
	int insertCompanionReply(CompanionReply companionreply);
	int updateCompanionReply(CompanionReply companionreply);
	int deleteCompanionReply(int companion_reply_no);
	CompanionReply selectCompanionReply(int companion_reply_no);
	int insertCompanionRereply(CompanionReply companionreply);
	
}
