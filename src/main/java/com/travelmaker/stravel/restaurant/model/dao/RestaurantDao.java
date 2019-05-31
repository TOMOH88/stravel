package com.travelmaker.stravel.restaurant.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.restaurant.model.vo.Restaurant;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantImage;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantReview;
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

	public ArrayList<RestaurantImage> selectRestaurantImage(SqlSessionTemplate session, int restaurant_no) {
		List<RestaurantImage> list = session.selectList("restaurantMapper.selectRestaurantImage", restaurant_no); 
		return (ArrayList<RestaurantImage>) list;
	}

	public ArrayList<RestaurantReview> selectRestaurantReview(SqlSessionTemplate session, int restaurant_no) {
		List<RestaurantReview> list = session.selectList("restaurantMapper.selectRestaurantReview", restaurant_no);
		return (ArrayList<RestaurantReview>) list;
	}

	public int selectRestaurantReviewNo(SqlSessionTemplate session) {
		
		return session.selectOne("restaurantMapper.selectRestaurantNO");
	}

	public int insertRestaurantReview(SqlSessionTemplate session, RestaurantReview review) {
		
		return session.insert("restaurantMapper.insertRestaurantReview", review);
	}

	public int updateReviewBlindStatus(SqlSessionTemplate session, int review_no) {
		// TODO Auto-generated method stub
		return session.update("restaurantMapper.updateReviewBlindStatus", review_no);
	}

	public int updateReviewDeleteStatus(SqlSessionTemplate session, int review_no) {
		// TODO Auto-generated method stub
		return session.update("restaurantMapper.updateReviewDeleteStatus", review_no);
	}

	public int updateRestaurantStatus(SqlSessionTemplate session, int restaurant_no) {
		// TODO Auto-generated method stub
		return session.update("restaurantMapper.updateRestaurantStatus", restaurant_no);
	}

	public int updateReviewDelete(SqlSessionTemplate session, int review_no) {
		// TODO Auto-generated method stub
		return session.update("restaurantMapper.updateReviewDeleteStatus", review_no);
	}

	public ArrayList<Restaurant> selectRestaurantCategoryList(SqlSessionTemplate session, String category) {
		List<Restaurant> list = session.selectList("restaurantMapper.selectRestaurantCategoryList", category);
		return (ArrayList<Restaurant>) list;	
	}
}
