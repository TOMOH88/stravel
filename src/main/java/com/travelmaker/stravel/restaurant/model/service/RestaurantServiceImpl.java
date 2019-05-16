package com.travelmaker.stravel.restaurant.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.restaurant.model.dao.RestaurantDao;
import com.travelmaker.stravel.restaurant.model.vo.Restaurant;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantImage;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantReview;

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
		
		return restDao.selectRestaurantNo(mybatisSession);
	}
	
	@Override
	public int insertRestaurantImages(RestaurantImage restaurantImage) {
		int result = restDao.insertRestaurantImage(mybatisSession, restaurantImage);
		return result;
	}

	@Override
	public int updateRestaurantThumnail(Restaurant rest) {
		return restDao.updateRestaurantThumnail(mybatisSession, rest);
	}

	@Override
	public ArrayList<Restaurant> SeafoodList() {
		
		return restDao.SeafoodList(mybatisSession);
	}

	@Override
	public ArrayList<Restaurant> barbecueList() {
		
		return restDao.barbecueList(mybatisSession);
	}

	@Override
	public ArrayList<Restaurant> koreanfoodList() {
		
		return restDao.koreanfoodList(mybatisSession);
	}

	@Override
	public ArrayList<Restaurant> cafeList() {
		
		return restDao.cafeList(mybatisSession);
	}

	@Override
	public Restaurant restaurantDetail(int restaurant_no) {

		return restDao.restaurantDetail(mybatisSession, restaurant_no);
	}

	@Override
	public ArrayList<RestaurantImage> selectRestaurantImage(int restaurant_no) {
		
		return restDao.selectRestaurantImage(mybatisSession, restaurant_no);
	}

	@Override
	public ArrayList<RestaurantReview> selectRestaurantReview(int restaurant_no) {
		
		return restDao.selectRestaurantReview(mybatisSession, restaurant_no);
	}

	@Override
	public int selectRestaurantReviewNO() {
		
		return restDao.selectRestaurantReviewNo(mybatisSession);
	}

	@Override
	public int insertRestaurantReview(RestaurantReview review) {
		
		return restDao.insertRestaurantReview(mybatisSession, review);
	}

}
