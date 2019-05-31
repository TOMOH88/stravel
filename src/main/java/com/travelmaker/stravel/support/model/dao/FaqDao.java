package com.travelmaker.stravel.support.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.support.model.vo.FaqCategoryVo;
import com.travelmaker.stravel.support.model.vo.FaqVo;

@Repository("FaqDao")
public class FaqDao {
	private final String NM="supportMapper.";
	public ArrayList<FaqCategoryVo> selectFaqCategory(SqlSessionTemplate mybatisSession) {
		List<FaqCategoryVo> list = mybatisSession.selectList(NM+"selectFaqCategory");
		return (ArrayList<FaqCategoryVo>)list;
	}
	public int insertFaq(SqlSessionTemplate mybatisSession, FaqVo faq) {
		return mybatisSession.insert(NM+"insertFaq", faq);
	}
	public ArrayList<FaqVo> selectFaqList(SqlSessionTemplate mybatisSession, PagingVo paging) {
		List<FaqVo> list = mybatisSession.selectList(NM+"selectFaqList",paging);
		return (ArrayList<FaqVo>)list;
	}
	public int selectTotalPaging(SqlSessionTemplate mybatisSession) {
		return mybatisSession.selectOne(NM+"selectFaqTotalPaging");
	}
	public FaqVo selectFaqOne(SqlSessionTemplate mybatisSession, int faq_no) {
		return mybatisSession.selectOne(NM+"selectFaqOne",faq_no);
	}
	public int deleteFaq(SqlSessionTemplate mybatisSession, int faq_no) {
		return mybatisSession.update(NM+"deleteFaq", faq_no);
	}
	public ArrayList<FaqVo> selectFaqPayList(SqlSessionTemplate mybatisSession) {
		List<FaqVo> list = mybatisSession.selectList(NM+"selectFaqPayList");
		return (ArrayList<FaqVo>)list;
	}
	public ArrayList<FaqVo> selectFaqUserList(SqlSessionTemplate mybatisSession) {
		List<FaqVo> list = mybatisSession.selectList(NM+"selectFaqUserList");
		return (ArrayList<FaqVo>)list;
	}
	public ArrayList<FaqVo> selectFaqItemList(SqlSessionTemplate mybatisSession) {
		List<FaqVo> list = mybatisSession.selectList(NM+"selectFaqItemList");
		return (ArrayList<FaqVo>)list;
	}
	public ArrayList<FaqVo> selectFaqListCategory(SqlSessionTemplate mybatisSession, String cate) {
		List<FaqVo> list = mybatisSession.selectList(NM+"selectFaqListCategory",cate);
		return (ArrayList<FaqVo>)list;
	}

}
