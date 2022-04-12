package com.human.java.domain;

public class TicketingVO {

	// 시퀀스 next.val
	private int ticketing_id;
	
	// 넘겨줘야하는 값
	private String ticketing_date;
	private String customer_id;
	private String consumer_name;
	private String consumer_ph;
	private String exhibition_id;
	private String ticketing_flag;
	
	public String getTicketing_flag() {
		return ticketing_flag;
	}
	public void setTicketing_flag(String ticketing_flag) {
		this.ticketing_flag = ticketing_flag;
	}
	public int getTicketing_id() {
		return ticketing_id;
	}
	public void setTicketing_id(int ticketing_id) {
		this.ticketing_id = ticketing_id;
	}
	public String getTicketing_date() {
		return ticketing_date;
	}
	public void setTicketing_date(String ticketing_date) {
		this.ticketing_date = ticketing_date;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getConsumer_name() {
		return consumer_name;
	}
	public void setConsumer_name(String consumer_name) {
		this.consumer_name = consumer_name;
	}
	public String getConsumer_ph() {
		return consumer_ph;
	}
	public void setConsumer_ph(String consumer_ph) {
		this.consumer_ph = consumer_ph;
	}
	public String getExhibition_id() {
		return exhibition_id;
	}
	public void setExhibition_id(String exhibition_id) {
		this.exhibition_id = exhibition_id;
	}
	
	
}
