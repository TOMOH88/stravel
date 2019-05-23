package com.travelmaker.stravel.common;

import java.io.Serializable;

public class PagingVo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2110529727369763927L;
	private int pageCnt;
	private int index;
	private int pageStartNum;
	private int listCnt;
	private int total;
	private String searchCategory;
	private String items;

	
	{
		pageCnt= 5;
		index = 0;
		pageStartNum = 1;
		listCnt = 5;
	}
	
	public PagingVo() {
		super();
	}
	public int getStart() {
		return index*listCnt+1;
	}
	public int getLast() {
		return (index*listCnt)+listCnt;
	}
	public int getPageLastNum() {
        int remainListCnt = total-listCnt*(pageStartNum-1);
        int remainPageCnt = remainListCnt/listCnt;
        if(remainListCnt%listCnt != 0) {
            remainPageCnt++;
        }
        int pageLastNum = 0;
        if(remainListCnt <= listCnt) {
            pageLastNum = pageStartNum;
        }else if(remainPageCnt <= pageCnt) {
            pageLastNum = remainPageCnt+pageStartNum-1;
        }else {
            pageLastNum = pageCnt+pageStartNum-1;
        }
        return pageLastNum;
    }
	public boolean getLastChk() {
        int n = (int)Math.ceil((double)total/listCnt);
        return getPageLastNum()==n ? false : n==0 ? false : true;
    }
	public int getPageCnt() {
		return pageCnt;
	}
	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public int getPageStartNum() {
		return pageStartNum;
	}
	public void setPageStartNum(int pageStartNum) {
		this.pageStartNum = pageStartNum;
	}
	public int getListCnt() {
		return listCnt;
	}
	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	public String getSearchCategory() {
		return searchCategory;
	}
	public void setSearchCategory(String searchCategory) {
		this.searchCategory = searchCategory;
	}
	public String getItems() {
		return items;
	}
	public void setItems(String items) {
		this.items = items;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "PagingVo [pageCnt=" + pageCnt + ", index=" + index + ", pageStartNum=" + pageStartNum + ", listCnt="
				+ listCnt + ", total=" + total + ", searchCategory=" + searchCategory + ", items=" + items + "]";
	}
    
	
}
