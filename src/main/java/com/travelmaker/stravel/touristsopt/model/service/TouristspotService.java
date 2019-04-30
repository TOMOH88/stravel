package com.travelmaker.stravel.touristsopt.model.service;

import com.travelmaker.stravel.touristsopt.model.vo.TouristspotVo;

import java.util.ArrayList;

import com.travelmaker.stravel.touristsopt.model.vo.TouristspotImagesVo;

public interface TouristspotService {
	int selectTouristspotNO();
	int insertTouristspot(TouristspotVo ts);
	int insertTouristspotImages(ArrayList<TouristspotImagesVo> tsImages);
}
