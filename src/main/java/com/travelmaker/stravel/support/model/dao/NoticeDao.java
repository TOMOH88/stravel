package com.travelmaker.stravel.support.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.support.model.vo.NoticeVo;

@Repository("NoticeDao")
public class NoticeDao {

	public int insertNotice(SqlSessionTemplate mybatisSession, NoticeVo notice) {
		return mybatisSession.insert("supportMapper.insertNotice",notice);
	}

	public ArrayList<NoticeVo> selectNoticeList(SqlSessionTemplate mybatisSession) {
		List<NoticeVo> list = mybatisSession.selectList("supportMapper.selectNoticeList");
		return (ArrayList<NoticeVo>)list;
	}

}
