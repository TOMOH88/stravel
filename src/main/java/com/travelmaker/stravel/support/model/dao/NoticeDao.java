package com.travelmaker.stravel.support.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.support.model.vo.NoticeVo;

@Repository("NoticeDao")
public class NoticeDao {
	private final String NM="supportMapper.";

	public int insertNotice(SqlSessionTemplate mybatisSession, NoticeVo notice) {
		return mybatisSession.insert("supportMapper.insertNotice",notice);
	}

	public ArrayList<NoticeVo> selectNoticeList(SqlSessionTemplate mybatisSession) {
		List<NoticeVo> list = mybatisSession.selectList("supportMapper.selectNoticeList");
		return (ArrayList<NoticeVo>)list;
	}

	public ArrayList<NoticeVo> selectPaging(SqlSessionTemplate mybatisSession, PagingVo paging) {
		List<NoticeVo> list = mybatisSession.selectList(NM+"selectPaging", paging);
		return (ArrayList<NoticeVo>)list;
	}

	public int selectTotalPaging(SqlSessionTemplate mybatisSession) {
		return mybatisSession.selectOne(NM+"selectTotalPaging");
	}

	public int selectTotalPagingSearch(SqlSessionTemplate mybatisSession, PagingVo paging) {
		return mybatisSession.selectOne(NM+"selectTotalPagingSearch",paging);
	}

}
