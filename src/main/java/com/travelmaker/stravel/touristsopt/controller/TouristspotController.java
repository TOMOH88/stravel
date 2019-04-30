package com.travelmaker.stravel.touristsopt.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.travelmaker.stravel.common.GeoCoder;
import com.travelmaker.stravel.support.controller.SupportController;
import com.travelmaker.stravel.touristsopt.model.service.TouristspotService;
import com.travelmaker.stravel.touristsopt.model.vo.TouristspotVo;
import com.travelmaker.stravel.touristsopt.model.vo.TouristspotImagesVo;

@Controller
public class TouristspotController {
	
	private static final Logger logger= LoggerFactory.getLogger(SupportController.class);
	/*@Autowired
	GeoCoder geocoder;*/
	@Autowired
	private TouristspotService touristspotService;
	
	@RequestMapping("touristspot.do")
	public String moveTouristspotMain() {
		logger.info("관광지 리스트");
		return "touristspot/touristspotMain";
	}
	@RequestMapping("moveTSAdmin.do")
	public String moveTouristspotAdminMain() {
		logger.info("관광지 리스트 사용자");
		return "touristspot/touristspotMainAdmin";
	}
	@RequestMapping("TSWriter.do")
	public String moveTouristspotAdminWriter() {
			logger.info("관광지 리스트 사용자");
			return "touristspot/touristspotWriterAdmin";
		}
	@RequestMapping(value="TSWriterUpload.do",method=RequestMethod.POST)
	public String insertTouristspot(TouristspotVo ts,MultipartHttpServletRequest mtfRequest,HttpServletRequest request) {
		String path = "touristspot/touristspotWriterError";
		String savePath = request.getSession().getServletContext().getRealPath("/resources/files/touristspotImages");
		ArrayList<TouristspotImagesVo> tsImages = new ArrayList<TouristspotImagesVo>();
		ts.setTouristsopt_no(touristspotService.selectTouristspotNO());
		//지오코딩
		Float[] grid = GeoCoder.geoCoding(ts.getTouristsopt_address());
		//이미지 여러개 처리
		int result = touristspotService.insertTouristspot(ts);
		List<MultipartFile> fileList = mtfRequest.getFiles("tsimages");
		if(fileList.isEmpty()) {
		for(MultipartFile f:fileList) {
			String originalFileName = f.getOriginalFilename();
			try {
			f.transferTo(new File(savePath+"\\"+f.getOriginalFilename()));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			
			String renameFileName = ts.getTouristsopt_name()+"-"+sdf.format(new java.sql.Date(System.currentTimeMillis()))
					+ "." + originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
			
			tsImages.add(new TouristspotImagesVo(ts.getTouristsopt_no(), renameFileName));
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		int result2 = touristspotService.insertTouristspotImages(tsImages);
		}
		if(result >0) {
			path="touristspot/touristspotMain";
		}
		return path;
	}
}
