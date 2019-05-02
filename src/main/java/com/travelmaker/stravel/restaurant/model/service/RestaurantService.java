package com.travelmaker.stravel.restaurant.model.service;



import com.travelmaker.stravel.restaurant.model.vo.Restaurant;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantImage;

public interface RestaurantService {

	int insertRestaurant(Restaurant rest);

	int selectRestaurantNo();

	int insertRestaurantImages(RestaurantImage restaurantImage);

	int updateRestaurantThumnail(Restaurant rest);
	

	

	

	
}
