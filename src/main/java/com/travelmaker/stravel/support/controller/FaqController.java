package com.travelmaker.stravel.support.controller;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.common.FileUtil;
import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.common.UUIDUtil;
import com.travelmaker.stravel.support.model.service.FaqService;
import com.travelmaker.stravel.support.model.vo.FaqCategoryVo;
import com.travelmaker.stravel.support.model.vo.FaqVo;

@Controller
public class FaqController {
	//faq 작업공간
	@Autowired
	private FaqService faqService;
		@RequestMapping("faqlist.do")
		public ModelAndView moveFaqList1Page(ModelAndView mv) {
			ArrayList<FaqVo> pay = faqService.selectFaqPayList();
			ArrayList<FaqVo> user = faqService.selectFaqUserList();
			ArrayList<FaqVo> item = faqService.selectFaqItemList();
			mv.addObject("pay", pay);
			mv.addObject("user", user);
			mv.addObject("item", item);
			mv.setViewName("support/faq/faqList");
			return mv;
		}
		
		@RequestMapping("faqListCategory.do")
		public ModelAndView faqListCategory(ModelAndView mv,@RequestParam(name = "cate") String cate) {
			System.out.println(cate);
			if(cate.equals("C001")) {
				ArrayList<FaqVo> pay = faqService.selectFaqListCategory(cate);
				mv.addObject("faq", pay);
				mv.addObject("cate","결제");
			}
			if(cate.equals("C002")) {
				ArrayList<FaqVo> item = faqService.selectFaqListCategory(cate);
				mv.addObject("faq", item);
				mv.addObject("cate","상품");
			}
			if(cate.equals("C003")) {
				ArrayList<FaqVo> user = faqService.selectFaqListCategory(cate);
				mv.addObject("faq", user);
				mv.addObject("cate","계정");
			}

			mv.setViewName("support/faq/faqListCategory");
			return mv;
			
		}
		
		@RequestMapping("adminfaq.do")
		public ModelAndView moveaFaqListPage(ModelAndView mv,PagingVo paging) {
			ArrayList<FaqCategoryVo> fclist = faqService.selectFaqCategory();
			ArrayList<FaqVo> flist = faqService.selectFaqList(paging);
			paging.setTotal(faqService.selectTotalPaging());	
			mv.addObject("fc", fclist);
			mv.addObject("faqlist", flist);
			mv.addObject("p", paging);
			
			mv.setViewName("support/faq/adminFaqList");
			return mv;
		}
		
		@RequestMapping(value="faqinsert.do")
		public ModelAndView moveFaqWritePage(ModelAndView mv) {
			ArrayList<FaqCategoryVo> list = faqService.selectFaqCategory();
			mv.addObject("faqCategory", list);
			mv.setViewName("support/faq/adminFaqWrite");
			return mv;
		}
		@RequestMapping("adminfaqView.do")
		public ModelAndView moveFaqListViewPage(ModelAndView mv,@RequestParam(name="faq_no", required=false) int faq_no) {
			FaqVo faq = faqService.selectFaqOne(faq_no);
			mv.addObject("faq", faq);
			mv.setViewName("support/faq/adminFaqListView");
			return mv;
		}
		@RequestMapping("faqView.do")
		public ModelAndView moveUserFaqListViewPage(ModelAndView mv,@RequestParam(name="faq_no", required=false) int faq_no) {
			FaqVo faq = faqService.selectFaqOne(faq_no);
			mv.addObject("faq", faq);
			mv.setViewName("support/faq/faqListView");
			return mv;
		}
		@RequestMapping(value="faqinsert.do",method=RequestMethod.POST)
		public ModelAndView insertFaq(ModelAndView mv,FaqVo faq,@RequestParam(name="upfile", required=false) MultipartFile upfile,HttpServletRequest request) {	
			if(!upfile.isEmpty()) {
				String savePath = request.getSession().getServletContext().getRealPath("/resources/files/faq");
				System.out.println(savePath);
				String originalFileName = upfile.getOriginalFilename();
				String renameFileName = "faq-" + UUIDUtil.GetUUID()+ "." + FileUtil.getExtension(originalFileName);
				//파일업로드용
				FileUtil.upLoadFile(upfile,originalFileName,savePath,renameFileName );
				faq.setRename_ffilename(renameFileName);
					
			}
			System.out.println(faq);
			int result = faqService.insertFaq(faq);
			mv.setViewName("redirect:adminfaq.do");
			return mv;
		}
		@RequestMapping("faqDelete.do")
		public ModelAndView deleteFaq(ModelAndView mv,@RequestParam(name="faq_no", required=false) int faq_no) {
			int result =faqService.deleteFaq(faq_no);
			mv.setViewName("redirect:adminfaq.do");
			return mv;
		}
		@RequestMapping("faqdown.do")
		public ModelAndView fileDownMethod(HttpServletRequest request,@RequestParam(name="filename") String fileName) {
			String saveFath = request.getSession().getServletContext().getRealPath("/resources/files/faq");
			File downFile = new File(saveFath+"\\"+fileName);
		    return new ModelAndView("filedown", "downFile", downFile);
		}
}
