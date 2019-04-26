package com.travelmaker.stravel.support.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.support.model.vo.QnaVo;

public interface SupportService {
	int qnaInsert(QnaVo qnavo);
	ArrayList<QnaVo> selectMyQnaList(String userid);
	QnaVo selectMyQnaListOne(QnaVo qnaVo);
}
