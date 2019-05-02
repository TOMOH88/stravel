package com.travelmaker.stravel.restaurant.controller;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.restaurant.model.service.RestaurantCategoryService;
import com.travelmaker.stravel.restaurant.model.service.RestaurantService;
import com.travelmaker.stravel.restaurant.model.vo.Restaurant;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantCategory;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantImage;

@Controller
public class RestaurantController {

	private static final Logger logger = LoggerFactory.getLogger(RestaurantController.class);
	
	@Autowired
	private RestaurantService resService;
	@Autowired
	private RestaurantCategoryService rescateService;
	
	@RequestMapping("restaurantlist.do")
	public String moveRestaurantList() {
		return "Restaurant/restaurantList";
	}
	@RequestMapping(value = "insertres.do", method = RequestMethod.POST)
	public String insertRestaurant(Restaurant rest, MultipartHttpServletRequest resimRequest, HttpServletRequest request) {
		String savePath = request.getSession().getServletContext().getRealPath("resources/img/restaurant");
		ArrayList<RestaurantImage> imageList = new ArrayList<RestaurantImage>();
		rest.setRestaurant_no(resService.selectRestaurantNo());
		
		int result = resService.insertRestaurant(rest);
		
			return "Restaurant/insertRestaurant";
	}
	
	@RequestMapping("insertres.do")
	public ModelAndView moveInsertRestaurant(ModelAndView mv) {
		ArrayList<RestaurantCategory> categoryList = rescateService.categoryList();
		mv.addObject("list", categoryList);
		
		mv.setViewName("Restaurant/insertRestaurant");
		return mv;
	}
	
}
