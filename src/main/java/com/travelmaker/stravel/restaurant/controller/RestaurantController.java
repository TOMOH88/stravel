package com.travelmaker.stravel.restaurant.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.common.UUIDUtil;
import com.travelmaker.stravel.restaurant.model.service.RestaurantCategoryService;
import com.travelmaker.stravel.restaurant.model.service.RestaurantService;
import com.travelmaker.stravel.restaurant.model.vo.Restaurant;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantCategory;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantImage;
import com.travelmaker.stravel.restaurant.model.vo.RestaurantReview;

@Controller
public class RestaurantController {

	private static final Logger logger = LoggerFactory.getLogger(RestaurantController.class);
	
	@Autowired
	private RestaurantService resService;
	@Autowired
	private RestaurantCategoryService rescateService;
	
	@RequestMapping("seafoodall.do")
	public ModelAndView seafoodAllList(ModelAndView mv) {
		ArrayList<Restaurant> SeafoodList = resService.SeafoodList();
		mv.addObject("seaList", SeafoodList);
		mv.setViewName("Restaurant/seafoodRestaurantAll");
		return mv;
	}
	@RequestMapping("seafoodalladmin.do")
	public ModelAndView seafoodAllListAdmin(ModelAndView mv) {
		ArrayList<Restaurant> SeafoodList = resService.SeafoodList();
		mv.addObject("seaList", SeafoodList);
		mv.setViewName("Restaurant/seafoodRestaurantAllAdmin");
		return mv;
	}
	@RequestMapping("koreanfoodalladmin.do")
	public ModelAndView koreanAllListAdmin(ModelAndView mv) {
		ArrayList<Restaurant> koreanfoodList = resService.koreanfoodList();
		mv.addObject("koreanfoodList", koreanfoodList);
		mv.setViewName("Restaurant/koreanRestaurantAllAdmin");
		return mv;
	}
	@RequestMapping("koreanfoodall.do")
	public ModelAndView koreanAllList(ModelAndView mv) {
		ArrayList<Restaurant> koreanfoodList = resService.koreanfoodList();
		mv.addObject("koreanfoodList", koreanfoodList);
		mv.setViewName("Restaurant/koreanRestaurantAll");
		return mv;
	}
	@RequestMapping("barbecuefoodall.do")
	public ModelAndView barbecueAllList(ModelAndView mv) {
		ArrayList<Restaurant> barbecueList = resService.barbecueList();
		mv.addObject("barbecueList", barbecueList);
		mv.setViewName("Restaurant/barbecueRestaurantAll");
		return mv;
	}
	@RequestMapping("barbecuefoodalladmin.do")
	public ModelAndView barbecueAllListAdmin(ModelAndView mv) {
		ArrayList<Restaurant> barbecueList = resService.barbecueList();
		mv.addObject("barbecueList", barbecueList);
		mv.setViewName("Restaurant/barbecueRestaurantAllAdmin");
		return mv;
	}
	@RequestMapping("caferestaurantall.do")
	public ModelAndView cafeAllList(ModelAndView mv) {
		ArrayList<Restaurant> cafeList = resService.cafeList();
		mv.addObject("cafeList", cafeList);
		mv.setViewName("Restaurant/cafeRestaurantAll");
		return mv;
	}
	@RequestMapping("caferestaurantalladmin.do")
	public ModelAndView cafeAllListAdmin(ModelAndView mv) {
		ArrayList<Restaurant> cafeList = resService.cafeList();
		mv.addObject("cafeList", cafeList);
		mv.setViewName("Restaurant/cafeRestaurantAllAdmin");
		return mv;
	}
	
	
	@RequestMapping("restaurantdetail.do")
	public ModelAndView restaurantDetail(ModelAndView mv, @RequestParam(name = "restaurant_no") int restaurant_no) {
		Restaurant restaurant = resService.restaurantDetail(restaurant_no);
		ArrayList<RestaurantImage> imageList = resService.selectRestaurantImage(restaurant_no);
		ArrayList<RestaurantReview> reviewList = resService.selectRestaurantReview(restaurant_no);
		
		mv.addObject("list", restaurant);
		mv.addObject("image", imageList);
		mv.addObject("review", reviewList);
		
		mv.setViewName("Restaurant/restaurantDetail");
		return mv;
	}
	@RequestMapping("restaurantdetailadmin.do")
	public ModelAndView restaurantDetailAdmin(ModelAndView mv, @RequestParam(name = "restaurant_no") int restaurant_no) {
		Restaurant restaurant = resService.restaurantDetail(restaurant_no);
		ArrayList<RestaurantImage> imageList = resService.selectRestaurantImage(restaurant_no);
		ArrayList<RestaurantReview> reviewList = resService.selectRestaurantReview(restaurant_no);
		
		mv.addObject("list", restaurant);
		mv.addObject("image", imageList);
		mv.addObject("review", reviewList);
		
		mv.setViewName("Restaurant/restaurantDetailAdmin");
		return mv;
	}
	
	
	@RequestMapping("restaurantlist.do")
	public ModelAndView moveRestaurantList(ModelAndView mv) {
		ArrayList<Restaurant> SeafoodList = resService.SeafoodList();
		mv.addObject("seaList", SeafoodList);
		
		ArrayList<Restaurant> barbecueList = resService.barbecueList();
		mv.addObject("barbecueList", barbecueList);
		
		ArrayList<Restaurant> koreanfoodList = resService.koreanfoodList();
		mv.addObject("koreanfoodList", koreanfoodList);
		
		ArrayList<Restaurant> cafeList = resService.cafeList();
		mv.addObject("cafeList", cafeList);
		
		
		mv.setViewName("Restaurant/restaurantList");
		
		return mv;
	}
	@RequestMapping("restaurantlistadmin.do")
	public ModelAndView moveRestaurantListAdmin(ModelAndView mv) {
		ArrayList<Restaurant> SeafoodList = resService.SeafoodList();
		mv.addObject("seaList", SeafoodList);
		
		ArrayList<Restaurant> barbecueList = resService.barbecueList();
		mv.addObject("barbecueList", barbecueList);
		
		ArrayList<Restaurant> koreanfoodList = resService.koreanfoodList();
		mv.addObject("koreanfoodList", koreanfoodList);
		
		ArrayList<Restaurant> cafeList = resService.cafeList();
		mv.addObject("cafeList", cafeList);
		
		
		mv.setViewName("Restaurant/restaurantListAdmin");
		
		return mv;
	}
	@RequestMapping(value = "insertrestaurant.do", method = RequestMethod.POST)
	public String insertRestaurant(Restaurant rest, MultipartHttpServletRequest resimRequest, HttpServletRequest request) {
		String path = "redirect:restaurantlist.do";
		String savePath = request.getSession().getServletContext().getRealPath("resources/img/restaurant");
		ArrayList<RestaurantImage> imageList = new ArrayList<RestaurantImage>();
		rest.setRestaurant_no(resService.selectRestaurantNo());
		System.out.println(rest);
		int result = resService.insertRestaurant(rest);
		System.out.println(result);
		if(result <= 0) {
			return path;
		}
		List<MultipartFile> fileList = resimRequest.getFiles("mainpic");
		for(int i = 0; i < fileList.size(); i++) {
			String originalFileName = fileList.get(i).getOriginalFilename();
			try {
				fileList.get(i).transferTo(new File(savePath + "\\" + fileList.get(i).getOriginalFilename()));
				String renameFileName = rest.getRestaurant_name() + "-" + UUIDUtil.GetUUID() + "." + originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
				
				File originFile = new File(savePath + "\\" + originalFileName);
				File renameFile = new File(savePath + "\\" + renameFileName);
				if(!originFile.renameTo(renameFile)) {
					int read = -1;
					byte[] buf = new byte[1024];
					
					FileInputStream fin = new FileInputStream(originalFileName);
					FileOutputStream fout = new FileOutputStream(renameFile);
					
					while((read = fin.read(buf, 0, buf.length)) != -1) {
						fout.write(buf, 0, read);
					}
					fin.close();
					fout.close();
					originFile.delete();
				}
				imageList.add(new RestaurantImage(rest.getRestaurant_no(),i+1, renameFileName));
				int result2 = resService.insertRestaurantImages(imageList.get(i));
				System.out.println(result2);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		rest.setRename_thumnail(imageList.get(0).getRestaurant_imagename());
		resService.updateRestaurantThumnail(rest);
		return path;
	
	}
	
	@RequestMapping("insertres.do")
	public ModelAndView moveInsertRestaurant(ModelAndView mv) {
		ArrayList<RestaurantCategory> categoryList = rescateService.categoryList();
		mv.addObject("list", categoryList);
		System.out.println(categoryList);
		mv.setViewName("Restaurant/insertRestaurant");
		return mv;
	}
	@RequestMapping(value="insertRestaurantReview.do", method=RequestMethod.POST)
	public String insertRestaurantReview(RestaurantReview review) {
		System.out.println("review"+review);
		review.setRestaurant_review_no(resService.selectRestaurantReviewNO());
		int result = resService.insertRestaurantReview(review);
		System.out.println("result" + result);
		return "redirect:restaurantdetail.do?restaurant_no=" + review.getRestaurant_no();
	}
	
}
