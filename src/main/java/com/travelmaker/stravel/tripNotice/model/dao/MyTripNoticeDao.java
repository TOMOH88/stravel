package com.travelmaker.stravel.tripNotice.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.tripNotice.model.vo.MyTripNotice;

@Repository("MyTripNoticeDao")
public class MyTripNoticeDao {

public ArrayList<MyTripNotice> tripNoticeListAll(SqlSessionTemplate mybatisSession) {
		
		List<MyTripNotice> list = mybatisSession.selectList("myTripNoticeMapper.selectNoticeList");
		
		return (ArrayList<MyTripNotice>)list;
		
	}	
}
