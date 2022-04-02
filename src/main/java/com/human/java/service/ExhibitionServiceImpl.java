package com.human.java.service;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.ExhibitionDAOImpl;
import com.human.java.domain.ExhibitionVO;

@Service("exhibitionService")
public class ExhibitionServiceImpl implements ExhibitionService{

	@Autowired
	private ExhibitionDAOImpl exhibitionDAO;
	
	@Override
	public int exhibitionInsert(ExhibitionVO vo) {
		// TODO Auto-generated method stub
		System.out.println("===============");
		System.out.println("exhibitionInsert 서비스 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		return 0;
	}

	@Override
	public ExhibitionVO exhibitionList(ExhibitionVO vo) {
		// TODO Auto-generated method stub
		System.out.println("===============");
		System.out.println("exhibitionSearch 서비스 호출");
		System.out.println("===============");
		return exhibitionDAO.exhibitionList(vo);
	}
	
	@Override
	public List<ExhibitionVO> exhibitionAll(ExhibitionVO vo) {
		// TODO Auto-generated method stub
		System.out.println("도착했습니다");
		System.out.println("===============");
		System.out.println("exhibition 올 서비스 호출");
		System.out.println("===============");
		return exhibitionDAO.exhibitionAll(vo);
	}

	
}
