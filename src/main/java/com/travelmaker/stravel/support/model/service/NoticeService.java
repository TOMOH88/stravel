package com.travelmaker.stravel.support.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.support.model.vo.NoticeVo;

public interface NoticeService {

	int insertNotice(NoticeVo notice);

	ArrayList<NoticeVo> selectNoticeList();

	ArrayList<NoticeVo> selectPaging(PagingVo paging);

	int selectTotalPaging();

	int selectTotalPagingSearch(PagingVo paging);

}
