package com.travelmaker.stravel.support.controller;

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
import com.travelmaker.stravel.touristspot.model.vo.TouristspotVo;

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
		System.out.println(notice);
			
		}
		int result = noticeService.insertNotice(notice);	
		return "support/notice/anoticeList";
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
		ArrayList<NoticeVo> lists = noticeService.selectPaging(paging);
		paging.setTotal(noticeService.selectTotalPaging());	
		mv.addObject("noticeList", lists);
        mv.addObject("p", paging);
		mv.setViewName("support/notice/noticeList");
		return mv;

	}
	
    /*@RequestMapping(value="list.do", method=RequestMethod.GET)
    public String list(String num){
      //  logger.info("list : " + num);
        Random ran = new Random();
        for (int i = 0; i < Integer.parseInt(num); i++) {
        	noticeService.listInsert(new NoticeVo(ran.nextInt(100000000)+""));
        }
        return "redirect:/paging.do";
    }*/
   /* @RequestMapping(value="/remove.do")
    public String remove(){
       // logger.info("remove");
    	noticeService.deleteAll();
        return "redirect:/paging.do";
    } */
	
	
	
	
	}

