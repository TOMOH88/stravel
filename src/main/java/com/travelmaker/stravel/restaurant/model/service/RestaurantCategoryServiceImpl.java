package com.travelmaker.stravel.restaurant.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.restaurant.model.dao.RestaurantCategoryDao;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantCategory;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantImage;

@Service("RestaurantCategoryService")
public class RestaurantCategoryServiceImpl implements RestaurantCategoryService{
	
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private RestaurantCategoryDao categoryDao;
	
	@Override
	public ArrayList<RestaurantCategory> categoryList() {
		
		return categoryDao.categoryList(mybatisSession);
	}

	
}
