package com.travelmaker.stravel.touristspot.controller;

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

import com.travelmaker.stravel.common.FileUtil;
import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.common.UUIDUtil;
import com.travelmaker.stravel.support.controller.QnaController;
import com.travelmaker.stravel.touristspot.model.service.TouristspotService;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotCategoryVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotImagesVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotReviewsVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotVo;


@Controller
public class TouristspotController {
	
	private static final Logger logger= LoggerFactory.getLogger(QnaController.class);
	@Autowired
	private TouristspotService touristspotService;
	
	@RequestMapping("sampStar.do")
	public String moveSampStar() {
		logger.info("샘플");
		return "touristspot/sampStar";
	}
	
	@RequestMapping("sampMap.do")
	public String moveSampMap() {
		logger.info("샘플");
		return "touristspot/sampMap";
	}
	@RequestMapping("sampMap2.do")
	public String moveSampMap2() {
		logger.info("샘플");
		return "touristspot/sampMap2";
	}
	@RequestMapping("touristspot.do")
	public ModelAndView moveTouristspotMain(ModelAndView mv) {
		logger.info("관광지 리스트");
		ArrayList<TouristspotVo> landmark = touristspotService.selectLandmarkTop();
		ArrayList<TouristspotVo> historic = touristspotService.selectHistoricTop();
		ArrayList<TouristspotVo> museum = touristspotService.selectMuseumTop();
		ArrayList<TouristspotVo> shopping = touristspotService.selectShoppingTop();
		
		mv.addObject("landmark", landmark);
		mv.addObject("historic", historic);
		mv.addObject("museum", museum);
		mv.addObject("shopping", shopping);
		mv.setViewName("touristspot/touristspotMain");
		return mv;
	}
	
	@RequestMapping(value="moveTSAdmin.do", method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView moveTouristspotAdminMain(ModelAndView mv,PagingVo paging) {
		logger.info("관광지 리스트 관리자 ");
		paging.setListCnt(9);
		if(paging.getSearchCategory() == null && paging.getItems() == null || paging.getSearchCategory() == "" && paging.getItems() == "") {
			ArrayList<TouristspotVo> touristspot = touristspotService.selectTouristspotList(paging);
			paging.setTotal(touristspotService.selectTotalPaging());
			mv.addObject("touristspot", touristspot);
			mv.addObject("p", paging);
			mv.setViewName("touristspot/touristspotMainAdmin");
		}else{
			ArrayList<TouristspotVo> touristspot = touristspotService.selectTouristspotList(paging);
			paging.setTotal(touristspotService.selectTotalPaging());
			mv.addObject("touristspot", touristspot);
			mv.addObject("p", paging);
			mv.setViewName("touristspot/touristspotMainAdmin");
		}
		
		
/*		ArrayList<TouristspotVo> touristspot = touristspotService.selectTouristspotList(paging);
		paging.setTotal(touristspotService.selectTotalPaging());
		mv.addObject("touristspot", touristspot);
		mv.addObject("p", paging);
		mv.setViewName("touristspot/touristspotMainAdmin");*/
		return mv;
	}
	@RequestMapping("TSWriter.do")
	public ModelAndView moveTouristspotAdminWriter(ModelAndView mv) {
			logger.info("관광지 관리자 글작성");
			ArrayList<TouristspotCategoryVo> list = touristspotService.selectTouristspotCategory();
			mv.addObject("TSCategory", list);
			mv.setViewName("touristspot/touristspotWriterAdmin");
			return mv;
		}
	@RequestMapping(value="TSWriterUpload.do",method=RequestMethod.POST)
	public String insertTouristspot(TouristspotVo ts,MultipartHttpServletRequest mtfRequest,HttpServletRequest request) {
		String path = "redirect:moveTSAdmin.do";
		int result = touristspotService.insertTouristspot(ts);
		if(result <=0) {
			return "touristspot/touristspotMain";
		}		
		//사진 연속업로드
		ArrayList<TouristspotImagesVo> tsImages = new ArrayList<TouristspotImagesVo>();
		List<MultipartFile> fileList = mtfRequest.getFiles("tsimages");
		for(int i=0;i<fileList.size();i++) {
			String originalFileName = fileList.get(i).getOriginalFilename();
			String renameFileName = ts.getTouristspot_name()+"-"+UUIDUtil.GetUUID()
			+ "." + FileUtil.getExtension(originalFileName);
			String savePath = request.getSession().getServletContext().getRealPath("/resources/files/touristspotImages");
			
			FileUtil.upLoadFile(fileList.get(i), originalFileName, savePath, renameFileName);
			
			tsImages.add(new TouristspotImagesVo(ts.getTouristspot_no(), i+1, renameFileName));
			int result2 = touristspotService.insertTouristspotImages(tsImages.get(i));
		}
		ts.setRename_thumnail(tsImages.get(0).getTouristspot_imagename());
		touristspotService.updateTouristspotThumnail(ts);
		/*if(result >0) {
			path="touristspot/touristspotMain";
		}*/
		return path;
	}
	@RequestMapping(value="TSWriterUpdate.do",method=RequestMethod.POST)
	public String updateTouristspot(TouristspotVo ts,MultipartHttpServletRequest mtfRequest,HttpServletRequest request) {
		String path = "redirect:moveTSAdmin.do";
		System.out.println(ts);
		int result = touristspotService.updateTouristspot(ts);
		if(result <=0) {
			return "redirect:moveTSAdmin.do";
		}		
		//사진 연속업로드
		ArrayList<TouristspotImagesVo> tsImages = new ArrayList<TouristspotImagesVo>();
		List<MultipartFile> fileList = mtfRequest.getFiles("tsimages");
		if(!fileList.isEmpty()) {
		for(int i=0;i<fileList.size();i++) {
			String originalFileName = fileList.get(i).getOriginalFilename();
			String renameFileName = ts.getTouristspot_name()+"-"+UUIDUtil.GetUUID()
			+ "." + FileUtil.getExtension(originalFileName);
			String savePath = request.getSession().getServletContext().getRealPath("/resources/files/touristspotImages");
			
			FileUtil.upLoadFile(fileList.get(i), originalFileName, savePath, renameFileName);
			
			tsImages.add(new TouristspotImagesVo(ts.getTouristspot_no(), touristspotService.selectImagesNumber(ts)+1, renameFileName));
			int result2 = touristspotService.insertTouristspotImages(tsImages.get(i));
		}
		}
		return path;
	}
	@RequestMapping("touristspotDetail.do")
	public ModelAndView touristspotDetail(ModelAndView mv,@RequestParam(name = "tno") int tno) {
		TouristspotVo ts = touristspotService.selectTouristspotDetail(tno);
		ArrayList<TouristspotImagesVo> tsiList =  touristspotService.selectTouristspotImages(tno);
		ArrayList<TouristspotReviewsVo> tsrList = touristspotService.selectTouristspotReviews(tno);
		Double point2 = touristspotService.selectReviewPoint(tno);
		if(point2 == null) {
			point2 = 0.0;
		}
		int point = Integer.parseInt(String.valueOf(Math.round(point2)));
		mv.addObject("point", (point -1));
		mv.addObject("point2", Math.round(point2*100)/100.0);
		mv.addObject("touristspot", ts);
		mv.addObject("touristspotImages", tsiList);
		mv.addObject("touristspotReviews", tsrList);
		mv.setViewName("touristspot/touristspotDetail");
		return mv;
		
	}
	@RequestMapping("touristspotDetailAdmin.do")
	public ModelAndView touristspotDetailAdmin(ModelAndView mv,@RequestParam(name = "tno") int tno) {
		TouristspotVo ts = touristspotService.selectTouristspotDetail(tno);
		ArrayList<TouristspotImagesVo> tsiList =  touristspotService.selectTouristspotImages(tno);
		ArrayList<TouristspotReviewsVo> tsrList = touristspotService.selectTouristspotReviews(tno);
		Double point2 = touristspotService.selectReviewPoint(tno);
		mv.addObject("touristspot", ts);
		if(point2 != null) {
		mv.addObject("point2", Math.round(point2*100)/100.0);
		}
		mv.addObject("touristspotImages", tsiList);
		mv.addObject("touristspotReviews", tsrList);
		mv.setViewName("touristspot/touristspotDetailAdmin");
		return mv;
		
	}
	@RequestMapping("updatetouristspot.do")
	public ModelAndView touristspotUpdateAdmin(ModelAndView mv,@RequestParam(name = "tno") int tno) {
		TouristspotVo ts = touristspotService.selectTouristspotDetail(tno);
		ArrayList<TouristspotImagesVo> tsiList =  touristspotService.selectTouristspotImages(tno);
		ArrayList<TouristspotReviewsVo> tsrList = touristspotService.selectTouristspotReviews(tno);
		ArrayList<TouristspotCategoryVo> list = touristspotService.selectTouristspotCategory();
		mv.addObject("TSCategory", list);
		mv.addObject("touristspot", ts);
		mv.addObject("touristspotImages", tsiList);
		mv.addObject("touristspotReviews", tsrList);
		mv.setViewName("touristspot/touristspotUpdateAdmin");
		return mv;
		
	}
	@RequestMapping(value="insertTourReview.do", method=RequestMethod.POST)
	public String insertTourReview(TouristspotReviewsVo tsrVo) {
		System.out.println(tsrVo);
		tsrVo.setReview_no(touristspotService.selectTourReviewNo(tsrVo.getTouristspot_no()));
		int result = touristspotService.insertTourReview(tsrVo);
		System.out.println(result);
		return "redirect: touristspotDetail.do?tno="+tsrVo.getTouristspot_no();
		
	}
	@RequestMapping("touristspotCategory.do")
	public ModelAndView touristspotCategory(ModelAndView mv,@RequestParam(name = "cate") String cate) {
		if(cate.equals("A001")) {
			ArrayList<TouristspotVo> landmark = touristspotService.selectTouristspotCategoryList(cate);
			mv.addObject("touristspot", landmark);
			mv.addObject("cate","랜드마크");
		}
		if(cate.equals("A002")) {
			ArrayList<TouristspotVo> historic = touristspotService.selectTouristspotCategoryList(cate);
			mv.addObject("touristspot", historic);
			mv.addObject("cate","유적지");
		}
		if(cate.equals("A003")) {
			ArrayList<TouristspotVo> museum = touristspotService.selectTouristspotCategoryList(cate);
			mv.addObject("touristspot", museum);
			mv.addObject("cate","박물관");
		}
		if(cate.equals("A004")) {
			ArrayList<TouristspotVo> shopping = touristspotService.selectTouristspotCategoryList(cate);
			mv.addObject("touristspot", shopping);
			mv.addObject("cate","쇼핑");
		}
		mv.setViewName("touristspot/touristspotCategory");
		return mv;
		
	}
	@RequestMapping("deletetouristspot.do")
	public ModelAndView touristspotDeleteAdmin(ModelAndView mv,@RequestParam(name = "tno") int tno) {
		int result = touristspotService.updateTouristspotStatus(tno);
		mv.setViewName("redirect:moveTSAdmin.do");
		return mv;
			
	}
	@RequestMapping("reviewBlind.do")
	public ModelAndView reviewBlindAdmin(ModelAndView mv,@RequestParam(name = "rno") int rno,@RequestParam(name = "tno") int tno) {
		System.out.println(rno);
		int result = touristspotService.updateReviewBlindStatus(rno);
		mv.setViewName("redirect:touristspotDetailAdmin.do?tno="+tno);
		return mv;
			
	}	
	@RequestMapping("reviewDelete.do")
	public ModelAndView reviewDeleteAdmin(ModelAndView mv,@RequestParam(name = "rno") int rno,@RequestParam(name = "tno") int tno) {
		System.out.println(rno);
		int result = touristspotService.updateReviewDeleteStatus(rno);
		mv.setViewName("redirect:touristspotDetailAdmin.do?tno="+tno);
		return mv;
			
	}
	@RequestMapping("reviewDeleteUser.do")
	public ModelAndView reviewDeleteUser(ModelAndView mv,@RequestParam(name = "rno") int rno,@RequestParam(name = "tno") int tno) {
		System.out.println(rno);
		int result = touristspotService.updateReviewDeleteStatus(rno);
		mv.setViewName("redirect:touristspotDetail.do?tno="+tno);
		return mv;
			
	}	

}
