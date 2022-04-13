package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.MasterExhibitionVO;

@Repository("masterExhibitionDAO")
public class MasterExhibitionDAOImpl implements MasterExhibitionDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<MasterExhibitionVO> masterExhibition() {
		System.out.println("DAO");
		
		return mybatis.selectList("masterExhibitionMapper.masterExhibitionSelect");
	}
	
	
	

}
