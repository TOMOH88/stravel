package com.travelmaker.stravel.restaurant.model.dao;

import java.util.ArrayList;
import java.util.List;

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
		
		return session.insert("restaurantMapper.insertRestaurantImage", restaurantImage);
	}

	public int updateRestaurantThumnail(SqlSessionTemplate session, Restaurant rest) {
		
		return session.update("restaurantMapper.updateRestaurantThumnail",rest);
	}

	public ArrayList<Restaurant> SeafoodList(SqlSessionTemplate session) {
		List<Restaurant> list = session.selectList("restaurantMapper.seafoodList");
		return (ArrayList<Restaurant>) list;
	}

	public ArrayList<Restaurant> barbecueList(SqlSessionTemplate session) {
		List<Restaurant> list = session.selectList("restaurantMapper.barbecueList");
		return (ArrayList<Restaurant>) list;
	}

	public ArrayList<Restaurant> koreanfoodList(SqlSessionTemplate session) {
		List<Restaurant> list = session.selectList("restaurantMapper.koreanfoodList");
		return (ArrayList<Restaurant>) list;
	}

	public ArrayList<Restaurant> cafeList(SqlSessionTemplate session) {
		List<Restaurant> list = session.selectList("restaurantMapper.cafeList");
		return (ArrayList<Restaurant>) list;
	}

	public Restaurant restaurantDetail(SqlSessionTemplate session, int restaurant_no) {
		
		return session.selectOne("restaurantMapper.restaurantDetail", restaurant_no);
	}

}
