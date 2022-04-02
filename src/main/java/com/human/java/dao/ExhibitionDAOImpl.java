package com.human.java.dao;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.ExhibitionVO;

@Repository("exhibitionDAO")
public class ExhibitionDAOImpl implements ExhibitionDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int exhibitionInsert(ExhibitionVO vo) {
		// TODO Auto-generated method stub
		System.out.println("===============");
		System.out.println("exhibitionInsert 다오 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		return mybatis.insert(null,vo);
	}

	@Override
	public ExhibitionVO exhibitionList(ExhibitionVO vo) {
		// TODO Auto-generated method stub
		System.out.println("===============");
		System.out.println("exhibitionList 다오 호출");
		
		System.out.println("===============");
		return  mybatis.selectOne("exhibitionMapper.exhibitionList",vo);
	}

	@Override
	public List<ExhibitionVO> exhibitionAll(ExhibitionVO vo) {
		// TODO Auto-generated method stub
		System.out.println("===============");
		System.out.println("exhibition 올 다오 호출");
		
		System.out.println("===============");
		return  mybatis.selectList("exhibitionMapper.exhibitionAll",vo);
	}

}
