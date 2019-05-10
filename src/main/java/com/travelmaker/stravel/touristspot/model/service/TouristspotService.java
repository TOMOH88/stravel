package com.travelmaker.stravel.touristspot.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.touristspot.model.vo.TouristspotCategoryVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotImagesVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotVo;

public interface TouristspotService {
	int selectTouristspotNO();
	int insertTouristspot(TouristspotVo ts);
	int insertTouristspotImages(TouristspotImagesVo touristspotImagesVo);
	ArrayList<TouristspotCategoryVo> selectTouristspotCategory();
	int updateTouristspotThumnail(TouristspotVo ts);
	ArrayList<TouristspotVo> selectTouristspotList();
	TouristspotVo selectTouristspotDetail(int tno);
	ArrayList<TouristspotImagesVo> selectTouristspotImages(int tno);
}
