package com.human.project;

public class Page {
	private int pageNum;
	private int amount;
	private int skip;
	
	public Page() { 
		this(1,5);
	}
	public Page(int pageNum, int amount) {
		this.pageNum=pageNum;
		this.amount=amount;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}	
}
