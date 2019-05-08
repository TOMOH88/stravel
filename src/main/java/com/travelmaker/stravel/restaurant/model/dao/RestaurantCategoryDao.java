package com.travelmaker.stravel.restaurant.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.restaurant.model.vo.RestaurantCategory;

@Repository("RestaurantCategoryDao")
public class RestaurantCategoryDao {

	public ArrayList<RestaurantCategory> categoryList(SqlSessionTemplate session) {
		
		List<RestaurantCategory> list = session.selectList("restaurantMapper.restaurantCategoryList");
		
		return (ArrayList<RestaurantCategory>)list;
	}

	

}
