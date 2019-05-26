package com.travelmaker.stravel.owner.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;

public interface OwnerService {

	ArrayList<Owner> selectRoomList(PagingVo paging);

	ArrayList<OwnerImg> selectOwnerImg();


}
