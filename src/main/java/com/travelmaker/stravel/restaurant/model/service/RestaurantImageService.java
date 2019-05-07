package com.travelmaker.stravel.restaurant.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.restaurant.model.vo.RestaurantImage;

public interface RestaurantImageService {

	ArrayList<RestaurantImage> SeafoodList();

	ArrayList<RestaurantImage> barbecueList();

	ArrayList<RestaurantImage> koreanfoodList();

	ArrayList<RestaurantImage> cafeList();


}
