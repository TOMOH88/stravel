package com.travelmaker.stravel.restaurant.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.restaurant.model.vo.RestaurantImage;
@Repository("RestaurantImageDao")
public class RestaurantImageDao {

	public ArrayList<RestaurantImage> SeafoodList(SqlSessionTemplate session) {
		
		List<RestaurantImage> list = session.selectList("restaurantMapper.seafoodList");
		return (ArrayList<RestaurantImage>)list;
	}

	public ArrayList<RestaurantImage> barbecueList(SqlSessionTemplate session) {
		List<RestaurantImage> list = session.selectList("restaurantMapper.barbecueList");
		return (ArrayList<RestaurantImage>)list;
	}

	public ArrayList<RestaurantImage> koreanfoodList(SqlSessionTemplate session) {
		List<RestaurantImage> list = session.selectList("restaurantMapper.koreanfoodList");
		return (ArrayList<RestaurantImage>) list;
	}

	public ArrayList<RestaurantImage> cafeList(SqlSessionTemplate session) {
		List<RestaurantImage> list = session.selectList("restaurantMapper.cafeList");
		return (ArrayList<RestaurantImage>) list;
	}

}
