package com.travelmaker.stravel.touristsopt.model.service;

import com.travelmaker.stravel.touristsopt.model.vo.TouristspotVo;

import java.util.ArrayList;

import com.travelmaker.stravel.touristsopt.model.vo.TouristspotCategoryVo;
import com.travelmaker.stravel.touristsopt.model.vo.TouristspotImagesVo;

public interface TouristspotService {
	int selectTouristspotNO();
	int insertTouristspot(TouristspotVo ts);
	int insertTouristspotImages(TouristspotImagesVo touristspotImagesVo);
	ArrayList<TouristspotCategoryVo> selectTouristspotCategory();
	int updateTouristspotThumnail(TouristspotVo ts);
}