package com.human.java.domain;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

//import java.sql.Date;

public class ExhibitionVO {

	private int exhibition_id;
	private String exhibition_title;

	private String exhibition_contents;
	private String exhibition_start_date;
	private String exhibition_end_date;
	private String exhibition_total_date;
	private String exhibition_image;
	private String exhibition_location;
	private int exhibition_price;
	MultipartFile file;
	MultipartFile file_sub;
	 private String t_file_name;
	 private String t_file_name_en;
	 private long t_file_size;
	 public boolean t_fileExtension;
	 private String exhibition_memo;
	
	
	public String getExhibition_memo() {
		return exhibition_memo;
	}
	public void setExhibition_memo(String exhibition_memo) {
		this.exhibition_memo = exhibition_memo;
	}
	public MultipartFile getFile_sub() {
		return file_sub;
	}
	public void setFile_sub(MultipartFile file_sub) {
		this.file_sub = file_sub;
		
		if(! file_sub.isEmpty()){
	         this.t_file_name = file_sub.getOriginalFilename();
	         this.t_file_size = file_sub.getSize();
	         
	         String fileExtension=t_file_name.substring(t_file_name.lastIndexOf("."));
	         
	         if (!(fileExtension.equals(".jpg") || fileExtension.equals(".jpeg") || fileExtension.equals(".png"))) {
	            t_fileExtension = true;
	            return;
	         }
	         //1. 가짜이름은 파일의 확장자가 없습니다. >> 진짜 이름에서 확장자를 가져와야한다.
	         //2. 사용자가 파일을 저장할때 겹치지않도록 암호화하는 코드
	         //형식 ip_랜덤문자32자리.확장자명
	         this.t_file_name_en=UUID.randomUUID().toString().replaceAll("-","")+fileExtension;
	         //***********************************************
	         // 해당 경로로 변경
	         File f = new File("C:\\Users\\human\\Desktop\\STS4\\thirdProject\\src\\main\\webapp\\resources\\img\\exhibition_sub\\"+t_file_name_en);
	         try {
	        	 file_sub.transferTo(f);
	            setExhibition_contents("/resources/img/exhibition_sub/"+t_file_name_en);
	            
	         } catch (IllegalStateException e) {            
	            e.printStackTrace();
	         } catch (IOException e) {
	            
	            e.printStackTrace();
	         }
	      }
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	      // 업로드 파일 접근
	      if(! file.isEmpty()){
	         this.t_file_name = file.getOriginalFilename();
	         this.t_file_size = file.getSize();
	         
	         String fileExtension=t_file_name.substring(t_file_name.lastIndexOf("."));
	         
	         if (!(fileExtension.equals(".jpg") || fileExtension.equals(".jpeg") || fileExtension.equals(".png"))) {
	            t_fileExtension = true;
	            return;
	         }
	         //1. 가짜이름은 파일의 확장자가 없습니다. >> 진짜 이름에서 확장자를 가져와야한다.
	         //2. 사용자가 파일을 저장할때 겹치지않도록 암호화하는 코드
	         //형식 ip_랜덤문자32자리.확장자명
	         this.t_file_name_en=UUID.randomUUID().toString().replaceAll("-","")+fileExtension;
	         //***********************************************
	         // 해당 경로로 변경
	         File f = new File("C:\\Users\\human\\Desktop\\STS4\\thirdProject\\src\\main\\webapp\\resources\\img\\exhibition_imgs\\"+t_file_name_en);
	         try {
	            file.transferTo(f);
	            setExhibition_image("/resources/img/exhibition_imgs/"+t_file_name_en);
	            
	         } catch (IllegalStateException e) {            
	            e.printStackTrace();
	         } catch (IOException e) {
	            
	            e.printStackTrace();
	         }
	      }
	   }

		
	
	// 전시회 등록시 필요한 회사의 ID
	private String company_id;

	// 전시회 등록 승인 여부 
	private String exhibition_flag;

	
	public String getExhibition_flag() {
		return exhibition_flag;
	}
	public void setExhibition_flag(String exhibition_flag) {
		this.exhibition_flag = exhibition_flag;
	}
	
	public String getExhibition_contents() {
		return exhibition_contents;
	}
	public void setExhibition_contents(String exhibition_contents) {
		this.exhibition_contents = exhibition_contents;
	}
	
	// 전시회 등록시 필요한 회사의 ID
	public String getCompany_id() {
		return company_id;
	}
	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}
	
	
	public int getExhibition_id() {
		return exhibition_id;
	}
	public void setExhibition_id(int exhibition_id) {
		this.exhibition_id = exhibition_id;
	}
	public String getExhibition_title() {
		return exhibition_title;
	}
	public void setExhibition_title(String exhibition_title) {
		this.exhibition_title = exhibition_title;
	}

	public String getExhibition_start_date() {
		return exhibition_start_date;
	}
	public void setExhibition_start_date(String exhibition_start_date) {
		this.exhibition_start_date = exhibition_start_date;
	}
	public String getExhibition_end_date() {
		return exhibition_end_date;
	}
	public void setExhibition_end_date(String exhibition_end_date) {
		this.exhibition_end_date = exhibition_end_date;
	}
	public String getExhibition_total_date() {
		return exhibition_total_date;
	}
	public void setExhibition_total_date(String exhibition_total_date) {
		this.exhibition_total_date = exhibition_total_date;
	}
	public String getExhibition_image() {
		return exhibition_image;
	}
	public void setExhibition_image(String exhibition_image) {
		this.exhibition_image = exhibition_image;
	}
	public String getExhibition_location() {
		return exhibition_location;
	}
	public void setExhibition_location(String exhibition_location) {
		this.exhibition_location = exhibition_location;
	}
	public int getExhibition_price() {
		return exhibition_price;
	}
	public void setExhibition_price(int exhibition_price) {
		this.exhibition_price = exhibition_price;
	}

	
	
}
