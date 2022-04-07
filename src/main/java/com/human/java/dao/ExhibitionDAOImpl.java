package com.human.java.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	@Override
	public List<ExhibitionVO> comingExhibition(ExhibitionVO vo) {
		// TODO Auto-generated method stub
		System.out.println("===============");
		System.out.println("exhibition 커밍 다오 호출");
		
		System.out.println("===============");
		return  mybatis.selectList("exhibitionMapper.comingExhibition",vo);
	}

	@Override
	public List<ExhibitionVO> exhibitionSearch(ExhibitionVO vo, String st, String ed) {
		System.out.println("===============");
		System.out.println("exhibition 서치 다오 호출");
		
		System.out.println("===============");
		
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("vo", vo);
		parms.put("st", st);
		parms.put("ed", ed);
		
		return  mybatis.selectList("exhibitionMapper.exhibitionSearch", parms);
	}

	@Override
	public ExhibitionVO exhibitionDetail(ExhibitionVO vo, String id) {
		// TODO Auto-generated method stub
		System.out.println("===============");
		System.out.println("exhibitionList 다오 호출");
				
		System.out.println("===============");
		
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("vo", vo);
		parms.put("id", id);
		return  mybatis.selectOne("exhibitionMapper.exhibitionDetail", parms);
	}

}
