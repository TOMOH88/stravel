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
	
	@Override
	public ArrayList<RestaurantImage> SeafoodList() {
		
		return imageDao.SeafoodList(mybatisSession);
	}

	@Override
	public ArrayList<RestaurantImage> barbecueList() {
		
		return imageDao.barbecueList(mybatisSession);
	}

	@Override
	public ArrayList<RestaurantImage> koreanfoodList() {
		
		return imageDao.koreanfoodList(mybatisSession);
	}

	@Override
	public ArrayList<RestaurantImage> cafeList() {
		
		return imageDao.cafeList(mybatisSession);
	}
	

}
