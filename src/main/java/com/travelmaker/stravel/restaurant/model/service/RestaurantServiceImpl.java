package com.travelmaker.stravel.restaurant.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.restaurant.model.dao.RestaurantDao;
import com.travelmaker.stravel.restaurant.model.vo.Restaurant;

@Service("RestaurantService")
public class RestaurantServiceImpl implements RestaurantService{

	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private RestaurantDao restDao;
	
	@Override
	public int insertRestaurant(Restaurant rest) {
		int result = restDao.inserRestaurant(mybatisSession, rest);
		return result;
	}

	@Override
	public int selectRestaurantNo() {
		// TODO Auto-generated method stub
		return 0;
	}

}
