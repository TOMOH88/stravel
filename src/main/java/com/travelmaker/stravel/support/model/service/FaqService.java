package com.travelmaker.stravel.support.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.support.model.vo.FaqCategoryVo;
import com.travelmaker.stravel.support.model.vo.FaqVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotVo;

public interface FaqService {

	ArrayList<FaqCategoryVo> selectFaqCategory();

	int insertFaq(FaqVo faq);

	ArrayList<FaqVo> selectFaqList(PagingVo paging);

	int selectTotalPaging();

	FaqVo selectFaqOne(int faq_no);

	int deleteFaq(int faq_no);

	ArrayList<FaqVo> selectFaqPayList();

	ArrayList<FaqVo> selectFaqUserList();

	ArrayList<FaqVo> selectFaqItemList();

	ArrayList<FaqVo> selectFaqListCategory(String cate);

}
