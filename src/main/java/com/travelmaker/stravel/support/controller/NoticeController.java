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
import com.travelmaker.stravel.support.model.service.NoticeService;
import com.travelmaker.stravel.support.model.vo.NoticeVo;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	//공지사항 작업공간
	
	@RequestMapping("noticewrite.do")
	public String moveAdminNoticeWritePage() {
		return "support/notice/noticeWrite";
	}
	@RequestMapping(value="insertNotice.do",method=RequestMethod.POST)
	public String insertNotice(NoticeVo notice,@RequestParam(name="upfile", required=false) MultipartFile upfile,HttpServletRequest request) {
		//파일업로드 및 리네임 
		if(!upfile.isEmpty()) {
		
		String savePath = request.getSession().getServletContext().getRealPath("/resources/files/notice");
		System.out.println(savePath);
		String originalFileName = upfile.getOriginalFilename();
		notice.setOriginalname_nfilename(originalFileName);
		String renameFileName = "notice-" + UUIDUtil.GetUUID()+ "." + FileUtil.getExtension(originalFileName);
		//파일업로드용
		FileUtil.upLoadFile(upfile,originalFileName,savePath,renameFileName );
		notice.setRename_nfilename(renameFileName);
			
		}
		int result = noticeService.insertNotice(notice);	
		return "redirect:adminnotice.do";
	}
	
	
	@RequestMapping(value="adminnotice.do", method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView paging(ModelAndView mv, PagingVo paging){
			System.out.println(paging);
			if(paging.getSearchCategory() == null && paging.getItems() == null || paging.getSearchCategory() == "" && paging.getItems() == "") {
				ArrayList<NoticeVo> lists = noticeService.selectPaging(paging);
				paging.setTotal(noticeService.selectTotalPaging());	
				System.out.println("모든 게시글 "+lists.size()+"="+paging.getTotal());
				mv.addObject("noticeList", lists);
		        mv.addObject("p", paging);
		        mv.setViewName("support/notice/anoticeList");
			}else{
				ArrayList<NoticeVo> lists = noticeService.selectPaging(paging);
				paging.setTotal(noticeService.selectTotalPagingSearch(paging));	
				System.out.println("검색된 게시글"+lists.size()+"="+paging.getTotal());
				mv.addObject("noticeList", lists);
		        mv.addObject("p", paging);
		        mv.setViewName("support/notice/anoticeList");
			}
	        System.out.println(paging.getTotal());
	        return mv;
	}
	
	@RequestMapping(value="notice.do", method={RequestMethod.POST,RequestMethod.GET})	
	public ModelAndView movenoticePage(ModelAndView mv,PagingVo paging) {
		System.out.println(paging);
		if(paging.getSearchCategory() == null && paging.getItems() == null || paging.getSearchCategory() == "" && paging.getItems() == "") {
			ArrayList<NoticeVo> lists = noticeService.selectPaging(paging);
			paging.setTotal(noticeService.selectTotalPaging());	
			System.out.println("모든 게시글 "+lists.size()+"="+paging.getTotal());
			mv.addObject("noticeList", lists);
	        mv.addObject("p", paging);
	        mv.setViewName("support/notice/noticeList");
		}else{
			ArrayList<NoticeVo> lists = noticeService.selectPaging(paging);
			paging.setTotal(noticeService.selectTotalPagingSearch(paging));	
			System.out.println("검색된 게시글"+lists.size()+"="+paging.getTotal());
			mv.addObject("noticeList", lists);
	        mv.addObject("p", paging);
	        mv.setViewName("support/notice/noticeList");
		}
		return mv;

	}
	@RequestMapping("anoticeDetail.do")
	public ModelAndView moveAdminNoticeDetailPage(ModelAndView mv,@RequestParam(name="notice_no", required=false) int notice_no) {
		System.out.println(notice_no);
		NoticeVo notice = noticeService.selectNoticeOne(notice_no);
		System.out.println(notice);
		mv.addObject("notice", notice);
		mv.setViewName("support/notice/anoticeDetail");
		return mv;
	}
	@RequestMapping("anoticeUpdate.do")
	public ModelAndView moveAdminNoticeUpdatePage(ModelAndView mv,@RequestParam(name="notice_no", required=false) int notice_no) {
		System.out.println(notice_no);
		NoticeVo notice = noticeService.selectNoticeOne(notice_no);
		System.out.println(notice);
		mv.addObject("notice", notice);
		mv.setViewName("support/notice/anoticeUpdate");
		return mv;
	}
	@RequestMapping("noticeDetail.do")
	public ModelAndView moveNoticeDetailPage(ModelAndView mv,@RequestParam(name="notice_no", required=false) int notice_no) {
		System.out.println(notice_no);
		NoticeVo notice = noticeService.selectNoticeOne(notice_no);
		System.out.println(notice);
		mv.addObject("notice", notice);
		mv.setViewName("support/notice/noticeDetail");
		return mv;
	}
	@RequestMapping("noticeDelete.do")
	public String deleteNoticeOne(@RequestParam(name="notice_no", required=false) int notice_no) {
		int result = noticeService.deleteNoticeOne(notice_no);
		return "redirect:adminnotice.do";
	}
	@RequestMapping("fdown.do")
	public ModelAndView fileDownMethod(HttpServletRequest request,@RequestParam(name="filename") String fileName) {
		String saveFath = request.getSession().getServletContext().getRealPath("/resources/files/notice");
		System.out.println(fileName);
		File downFile = new File(saveFath+"\\"+fileName);
	    return new ModelAndView("filedown", "downFile", downFile);
	}
	@RequestMapping(value="updateNotice.do",method=RequestMethod.POST)
	public ModelAndView updateNotice(ModelAndView mv,NoticeVo notice,@RequestParam(name="upfile", required=false) MultipartFile upfile,HttpServletRequest request) {
		System.out.println(notice);
		
		if(!upfile.isEmpty()) {
			String savePath = request.getSession().getServletContext().getRealPath("/resources/files/notice");
			System.out.println(savePath);
			String originalFileName = upfile.getOriginalFilename();
			notice.setOriginalname_nfilename(originalFileName);
			String renameFileName = "notice-" + UUIDUtil.GetUUID()+ "." + FileUtil.getExtension(originalFileName);
			//파일업로드용
			FileUtil.upLoadFile(upfile,originalFileName,savePath,renameFileName );
			notice.setRename_nfilename(renameFileName);
				
		}
		int result = noticeService.updateNotice(notice);
		mv.addObject("notice", notice);
		mv.setViewName("support/notice/anoticeDetail");
		return mv;
	}
		
}

