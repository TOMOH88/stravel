package com.travelmaker.stravel.restaurant.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.restaurant.model.vo.Restaurant;
@Repository("RestaurantDao")
public class RestaurantDao {

	public int inserRestaurant(SqlSessionTemplate session, Restaurant rest) {
		
		return session.insert("restaurantMapper.insertRestaurant", rest);
	}

}
