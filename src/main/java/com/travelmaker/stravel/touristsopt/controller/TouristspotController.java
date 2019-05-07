 package com.travelmaker.stravel.touristsopt.controller;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.common.UUIDUtil;
import com.travelmaker.stravel.support.controller.SupportController;
import com.travelmaker.stravel.touristsopt.model.service.TouristspotService;
import com.travelmaker.stravel.touristsopt.model.vo.TouristspotVo;
import com.travelmaker.stravel.touristsopt.model.vo.TouristspotCategoryVo;
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
		logger.info("관광지 리스트 관리자 ");
		return "touristspot/touristspotMainAdmin";
	}
	@RequestMapping("TSWriter.do")
	public ModelAndView moveTouristspotAdminWriter(ModelAndView mv) {
			logger.info("관광지 관리자 글작성");
			ArrayList<TouristspotCategoryVo> list = touristspotService.selectTouristspotCategory();
			mv.addObject("TSCategory", list);
			mv.setViewName("touristspot/touristspotWriterAdmin");
			return mv;
		}
	/*@RequestMapping(value="TSWriterUpload.do",method=RequestMethod.POST)
	public String insertTouristspot(TouristspotVo ts,MultipartHttpServletRequest mtfRequest,HttpServletRequest request) {
		String path = "touristspot/touristspotMain";
		String savePath = request.getSession().getServletContext().getRealPath("/resources/files/touristspotImages");
		ArrayList<TouristspotImagesVo> tsImages = new ArrayList<TouristspotImagesVo>();
		ts.setTouristsopt_no(touristspotService.selectTouristspotNO());
		System.out.println(ts.toString());
		//지오코딩
		Float[] grid = GeoCoder.geoCoding(ts.getTouristsopt_address());
		//이미지 여러개 처리
		//int result = touristspotService.insertTouristspot(ts);
		List<MultipartFile> fileList = mtfRequest.getFiles("tsimages");
		for(MultipartFile f:fileList) {
			String originalFileName = f.getOriginalFilename();
			try {
			f.transferTo(new File(savePath+"\\"+f.getOriginalFilename()));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
			
			String renameFileName = ts.getTouristsopt_name()+"-"+sdf.format(new java.sql.Date(System.currentTimeMillis()))
					+ "." + originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
			
			tsImages.add(new TouristspotImagesVo(ts.getTouristsopt_no(), renameFileName));
			for(TouristspotImagesVo tsi:tsImages) {
				System.out.println(tsi);
			}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//int result2 = touristspotService.insertTouristspotImages(tsImages);
		
		if(result >0) {
			path="touristspot/touristspotMain";
		}
		return path;
	}*/
	@RequestMapping(value="TSWriterUpload.do",method=RequestMethod.POST)
	public String insertTouristspot(TouristspotVo ts,MultipartHttpServletRequest mtfRequest,HttpServletRequest request) {
		String path = "touristspot/touristspotMain";
		String savePath = request.getSession().getServletContext().getRealPath("/resources/files/touristspotImages");
		ArrayList<TouristspotImagesVo> tsImages = new ArrayList<TouristspotImagesVo>();
		ts.setTouristsopt_no(touristspotService.selectTouristspotNO());
		System.out.println(ts.toString());
		//지오코딩
		//Float[] grid = GeoCoder.geoCoding(ts.getTouristsopt_address());
		//이미지 여러개 처리
		int result = touristspotService.insertTouristspot(ts);
		if(result <=0) {
			return "touristspot/touristspotMain";
		}
		List<MultipartFile> fileList = mtfRequest.getFiles("tsimages");
		for(int i=0;i<fileList.size();i++) {
			String originalFileName = fileList.get(i).getOriginalFilename();
			try {
			fileList.get(i).transferTo(new File(savePath+"\\"+fileList.get(i).getOriginalFilename()));
			String renameFileName = ts.getTouristsopt_name()+"-"+UUIDUtil.GetUUID()
					+ "." + originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
			
			File originFile = new File(savePath + "\\" + originalFileName);
			File renameFile = new File(savePath + "\\" + renameFileName);
			
			if(!originFile.renameTo(renameFile)) {
				int read = -1;
				byte[] buf = new byte[1024];
				
				FileInputStream fin = 
						new FileInputStream(originalFileName);
				FileOutputStream fout = 
						new FileOutputStream(renameFile);
				
				while((read = fin.read(buf, 0, buf.length)) != -1) {
					fout.write(buf, 0, read);
				}
				fin.close();
				fout.close();
				originFile.delete();
			}
			tsImages.add(new TouristspotImagesVo(ts.getTouristsopt_no(), i+1, renameFileName));
			int result2 = touristspotService.insertTouristspotImages(tsImages.get(i));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		ts.setRename_thumnail(tsImages.get(0).getTouristspot_imagename());
		touristspotService.updateTouristspotThumnail(ts);
		/*if(result >0) {
			path="touristspot/touristspotMain";
		}*/
		return path;
	}
}
