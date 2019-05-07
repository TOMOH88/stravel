package com.travelmaker.stravel.restaurant.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.restaurant.model.dao.RestaurantImageDao;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantImage;

@Service("RestaurantImageService")
public class RestaurantImageServiceImpl implements RestaurantImageService{

	@Autowired
	private SqlSessionTemplate mybatisSession;
	@Autowired
	private RestaurantImageDao imageDao;
	
	
	

}
