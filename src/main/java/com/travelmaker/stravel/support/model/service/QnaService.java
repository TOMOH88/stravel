package com.travelmaker.stravel.support.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.support.model.vo.QnaVo;

public interface QnaService {
	int insertUserQna(QnaVo qna);

	ArrayList<QnaVo> selectPaging(PagingVo paging);

	int selectTotalPaging();

	int selectTotalPagingSearch(PagingVo paging);

	QnaVo selectAdminQnaOne(int qna_no);

	int updateQnaAnswer(QnaVo qna);

	ArrayList<QnaVo> selectPagingQnaUser(PagingVo paging);

	int selectTotalPagingQnaUser(PagingVo paging);

	QnaVo selectUserQnaOne(int qna_no);
}
