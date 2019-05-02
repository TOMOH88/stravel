package com.travelmaker.stravel.restaurant.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.restaurant.model.vo.Restaurant;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantImage;
@Repository("RestaurantDao")
public class RestaurantDao {

	public int inserRestaurant(SqlSessionTemplate session, Restaurant rest) {
		
		return session.insert("restaurantMapper.insertRestaurant", rest);
	}

	public int selectRestaurantNo(SqlSessionTemplate session) {
		
		return session.selectOne("restaurantMapper.selectRestaurantNo");
	}

	public int insertRestaurantImage(SqlSessionTemplate session, RestaurantImage restaurantImage) {
		
		return session.insert("restaurantMapper.insertRestaurantImage");
	}

	public int updateRestaurantThumnail(SqlSessionTemplate session, Restaurant rest) {
		
		return session.update("restaurantMapper.updateRestaurantThumnail",rest);
	}

}
