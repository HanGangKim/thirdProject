package com.human.java.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.MasterCompanyVO;
import com.human.java.domain.MasterExhibitionVO;

@Repository("masterExhibitionDAO")
public class MasterExhibitionDAOImpl implements MasterExhibitionDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<MasterExhibitionVO> masterExhibition() {
		
		return mybatis.selectList("masterExhibitionMapper.masterExhibitionSelect");
	}
	
	@Override
	public void masterExhibitionUpdate(MasterExhibitionVO vo) {
		System.out.println("DAO 호출");
		
		mybatis.update("masterExhibitionMapper.masterExhibitionUpdate",vo);
		
	}
	
	@Override
	public List<MasterExhibitionVO> masterExhibitionDR() {
		return mybatis.selectList("masterExhibitionMapper.masterExhibitionSelectDR");
	}
	
	@Override
	public List<MasterExhibitionVO> masterExhibitionSearchTitleD(MasterExhibitionVO vo, String title) {
		System.out.println("===============");
		System.out.println("masterExhibitionSearchTitle D 다오 호출");
		System.out.println("===============");
		
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("title", title);
		
		return mybatis.selectList("masterExhibitionMapper.masterExhibitionSearchTitleD" , parms);
	}
	
	@Override
	public List<MasterExhibitionVO> masterExhibitionSearchTitleR(MasterExhibitionVO vo, String title) {
		System.out.println("===============");
		System.out.println("masterExhibitionSearchTitle R 다오 호출");
		System.out.println("===============");
		
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("title", title);
		
		return mybatis.selectList("masterExhibitionMapper.masterExhibitionSearchTitleR" , parms);
	}
	
	
	
	

}
