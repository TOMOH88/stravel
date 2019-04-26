package com.travelmaker.stravel.tripNotice.model.sevice;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.tripNotice.model.dao.MyTripNoticeDao;
import com.travelmaker.stravel.tripNotice.model.vo.MyTripNotice;

@Service("MyTripNoticeService")
public class MyTripNoticeServiceImpl implements MyTripNoticeService{
	
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private MyTripNoticeDao noticeDao;
	
	@Override
	public ArrayList<MyTripNotice> tripNoticeListAll() {
		
		return noticeDao.tripNoticeListAll(mybatisSession);
	}	
}
