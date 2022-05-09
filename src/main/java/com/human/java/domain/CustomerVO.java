package com.human.java.domain;

public class CustomerVO {

	// 일반고객 아이디
	private String customer_id;
	// 일반 고객 비밀번호
	private String customer_password;
	// 일반 고객 이름
	private String customer_name;
	// 일반 고객 전화번호
	private String customer_ph;
	// 일반 고객 나이
	private int customer_age;
	// 일반 고객 이메일
	private String customer_email;
	// 일반 고객 성별
	private String customer_gender;
	// 일반 고객 속성
	private String customer_flag;
	
	
	public String getCustomer_gender() {
		return customer_gender;
	}

	public void setCustomer_gender(String customer_gender) {
		this.customer_gender = customer_gender;
	}

	public CustomerVO() {
		
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public String getCustomer_password() {
		return customer_password;
	}

	public void setCustomer_password(String customer_password) {
		this.customer_password = customer_password;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getCustomer_ph() {
		return customer_ph;
	}

	public void setCustomer_ph(String customer_ph) {
		this.customer_ph = customer_ph;
	}

	public int getCustomer_age() {
		return customer_age;
	}

	public void setCustomer_age(int customer_age) {
		this.customer_age = customer_age;
	}

	public String getCustomer_email() {
		return customer_email;
	}

	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}

	public String getCustomer_flag() {
		return customer_flag;
	}

	public void setCustomer_flag(String customer_flag) {
		this.customer_flag = customer_flag;
	}
	


}
