package com.human.java.domain;

public class ReviewVO {

	private int review_id;
	private String review_title;
	private String review_contents;
	private String review_date;
	private double review_star_score;
	
	
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_contents() {
		return review_contents;
	}
	public void setReview_contents(String review_contents) {
		this.review_contents = review_contents;
	}
	public String getReview_date() {
		return review_date;
	}
	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}
	public double getReview_star_score() {
		return review_star_score;
	}
	public void setReview_star_score(double review_star_score) {
		this.review_star_score = review_star_score;
	}
	
	
}
