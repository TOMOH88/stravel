package com.travelmaker.stravel.restaurant.model.service;



import java.util.ArrayList;

import com.travelmaker.stravel.restaurant.model.vo.Restaurant;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantImage;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantReview;

public interface RestaurantService {

	int insertRestaurant(Restaurant rest);

	int selectRestaurantNo();

	int insertRestaurantImages(RestaurantImage restaurantImage);

	int updateRestaurantThumnail(Restaurant rest);

	ArrayList<Restaurant> SeafoodList();

	ArrayList<Restaurant> barbecueList();

	ArrayList<Restaurant> koreanfoodList();

	ArrayList<Restaurant> cafeList();

	Restaurant restaurantDetail(int restaurant_no);

	ArrayList<RestaurantImage> selectRestaurantImage(int restaurant_no);

	ArrayList<RestaurantReview> selectRestaurantReview(int restaurant_no);

	int selectRestaurantReviewNO();

	int insertRestaurantReview(RestaurantReview review);
	

	

	

	
}
