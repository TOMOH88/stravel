package com.travelmaker.stravel.support.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.support.model.vo.NoticeVo;

public interface NoticeService {

	int insertNotice(NoticeVo notice);

	ArrayList<NoticeVo> selectNoticeList();

}
