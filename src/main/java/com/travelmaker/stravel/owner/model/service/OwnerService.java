package com.travelmaker.stravel.owner.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;

public interface OwnerService {

	ArrayList<Owner> selectRoomList();

	ArrayList<OwnerImg> selectOwnerImg();


}
