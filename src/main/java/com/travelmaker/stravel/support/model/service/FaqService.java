package com.travelmaker.stravel.support.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.support.model.vo.FaqCategoryVo;
import com.travelmaker.stravel.support.model.vo.FaqVo;

public interface FaqService {

	ArrayList<FaqCategoryVo> selectFaqCategory();

	int insertFaq(FaqVo faq);

	ArrayList<FaqVo> selectFaqList(PagingVo paging);

	int selectTotalPaging();

	FaqVo selectFaqOne(int faq_no);

	int deleteFaq(int faq_no);

}
