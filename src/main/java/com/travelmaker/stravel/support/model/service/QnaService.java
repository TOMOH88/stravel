package com.travelmaker.stravel.support.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.support.model.vo.QnaVo;

public interface QnaService {
	int qnaInsert(QnaVo qnavo);
	ArrayList<QnaVo> selectMyQnaList(String userid);
	QnaVo selectMyQnaListOne(QnaVo qnaVo);
}
