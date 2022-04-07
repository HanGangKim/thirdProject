package com.human.java.service;

import java.util.ArrayList;
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
	
	@Override
	public List<ExhibitionVO> comingExhibition(ExhibitionVO vo) {
		// TODO Auto-generated method stub
		System.out.println("도착했습니다");
		System.out.println("===============");
		System.out.println("exhibition 커밍 서비스 호출");
		System.out.println("===============");
		return exhibitionDAO.comingExhibition(vo);
	}

	@Override
	public List<ExhibitionVO> exhibitionSearch(ExhibitionVO vo, String totalDate) {
		System.out.println("도착했습니다");
		System.out.println("===============");
		System.out.println("exhibition 서치 서비스 호출");
		System.out.println("===============");
		
		String[] date=totalDate.split(" to ");
		String st = date[0];
		st = st.replace("-", ".");
		String ed = date[1];
		ed = ed.replace("-", ".");
		System.out.println(st);
		System.out.println(ed);
		
		return exhibitionDAO.exhibitionSearch(vo,st,ed);
	}
	
	@Override
	public ExhibitionVO exhibitionDetail(ExhibitionVO vo, String id) {
		// TODO Auto-generated method stub
		System.out.println("===============");
		System.out.println("exhibitionInsert 서비스 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		return exhibitionDAO.exhibitionDetail(vo, id);
	}

	
}
