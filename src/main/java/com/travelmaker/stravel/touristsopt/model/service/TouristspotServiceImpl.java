package com.travelmaker.stravel.touristsopt.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.touristsopt.model.dao.TouristspotDao;
import com.travelmaker.stravel.touristsopt.model.vo.TouristspotVo;
import com.travelmaker.stravel.touristsopt.model.vo.TouristspotImagesVo;

@Service("TouristspotService")
public class TouristspotServiceImpl implements TouristspotService{
	
	@Autowired
	private SqlSessionTemplate mybatisSession;
	@Autowired
	private TouristspotDao touristspotDao;
	@Override
	public int selectTouristspotNO() {
		return touristspotDao.selectTouristspotNO(mybatisSession);
	}

	@Override
	public int insertTouristspot(TouristspotVo ts) {
		return touristspotDao.insertTouristspot(mybatisSession,ts);
	}

	@Override
	public int insertTouristspotImages(ArrayList<TouristspotImagesVo> tsImages) {
		return touristspotDao.insertTouristspotImages(mybatisSession,tsImages);
	}

}
