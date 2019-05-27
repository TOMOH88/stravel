package com.travelmaker.stravel.touristspot.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.touristspot.model.vo.TouristspotCategoryVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotImagesVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotReviewsVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotVo;

public interface TouristspotService {
	int insertTouristspot(TouristspotVo ts);
	int insertTouristspotImages(TouristspotImagesVo touristspotImagesVo);
	ArrayList<TouristspotCategoryVo> selectTouristspotCategory();
	int updateTouristspotThumnail(TouristspotVo ts);
	ArrayList<TouristspotVo> selectTouristspotList();
	TouristspotVo selectTouristspotDetail(int tno);
	ArrayList<TouristspotImagesVo> selectTouristspotImages(int tno);
	int insertTourReview(TouristspotReviewsVo tsrVo);
	int selectTourReviewNo();
	ArrayList<TouristspotReviewsVo> selectTouristspotReviews(int tno);
	ArrayList<TouristspotVo> selectLandmarkTop();
	ArrayList<TouristspotVo> selectHistoricTop();
	ArrayList<TouristspotVo> selectMuseumTop();
	ArrayList<TouristspotVo> selectShoppingTop();
	ArrayList<TouristspotVo> selectTouristspotCategoryList(String cate);
	int updateTouristspot(TouristspotVo ts);
	int selectImagesNumber(TouristspotVo ts);
	int updateTouristspotStatus(int tno);
	int updateReviewBlindStatus(int rno);
	int updateReviewDeleteStatus(int rno);
}
