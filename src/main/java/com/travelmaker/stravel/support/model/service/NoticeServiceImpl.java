package com.travelmaker.stravel.support.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.support.model.dao.NoticeDao;
import com.travelmaker.stravel.support.model.vo.NoticeVo;

@Service("NoticeSerive")
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	private NoticeDao noticeDao;
	@Autowired
	private SqlSessionTemplate mybatisSession;
	@Override
	public int insertNotice(NoticeVo notice) {
		return noticeDao.insertNotice(mybatisSession,notice);
	}
	@Override
	public ArrayList<NoticeVo> selectNoticeList() {
		return noticeDao.selectNoticeList(mybatisSession);
	}
	@Override
	public ArrayList<NoticeVo> selectPaging(PagingVo paging) {	
		return noticeDao.selectPaging(mybatisSession, paging);
	}
	@Override
	public int selectTotalPaging() {
		return noticeDao.selectTotalPaging(mybatisSession);
	}

}
