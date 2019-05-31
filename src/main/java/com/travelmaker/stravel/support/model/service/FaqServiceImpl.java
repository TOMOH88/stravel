package com.travelmaker.stravel.support.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.support.model.dao.FaqDao;
import com.travelmaker.stravel.support.model.vo.FaqCategoryVo;
import com.travelmaker.stravel.support.model.vo.FaqVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotVo;

@Service("FaqService")
public class FaqServiceImpl implements FaqService{
	
	@Autowired
	private FaqDao faqDao;
	@Autowired
	private SqlSessionTemplate mybatisSession;
	@Override
	public ArrayList<FaqCategoryVo> selectFaqCategory() {
		return faqDao.selectFaqCategory(mybatisSession);
	}
	@Override
	public int insertFaq(FaqVo faq) {
		return  faqDao.insertFaq(mybatisSession,faq);
	}
	@Override
	public ArrayList<FaqVo> selectFaqList(PagingVo paging) {
		return faqDao.selectFaqList(mybatisSession,paging);
	}
	@Override
	public int selectTotalPaging() {
		return faqDao.selectTotalPaging(mybatisSession);
	}
	@Override
	public FaqVo selectFaqOne(int faq_no) {
		return faqDao.selectFaqOne(mybatisSession,faq_no);
	}
	@Override
	public int deleteFaq(int faq_no) {
		return faqDao.deleteFaq(mybatisSession,faq_no);
	}
	@Override
	public ArrayList<FaqVo> selectFaqPayList() {
		return  faqDao.selectFaqPayList(mybatisSession);
	}
	@Override
	public ArrayList<FaqVo> selectFaqUserList() {
		return faqDao.selectFaqUserList(mybatisSession);
	}
	@Override
	public ArrayList<FaqVo> selectFaqItemList() {
		return faqDao.selectFaqItemList(mybatisSession);
	}
	@Override
	public ArrayList<FaqVo> selectFaqListCategory(String cate) {
		return faqDao.selectFaqListCategory(mybatisSession,cate);
	}

}
