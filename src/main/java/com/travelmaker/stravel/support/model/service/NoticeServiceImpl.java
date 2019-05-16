package com.travelmaker.stravel.support.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.support.model.dao.NoticeDao;
import com.travelmaker.stravel.support.model.vo.NoticeVo;

@Service("NoticeSerive")
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	private NoticeDao noticeDao;

	@Override
	public int insertNotice(NoticeVo notice) {
		// TODO Auto-generated method stub
		return 0;
	}

}
