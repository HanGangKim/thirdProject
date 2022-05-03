package com.human.java.dao;

import java.util.List;

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
	
	
	
	

}
