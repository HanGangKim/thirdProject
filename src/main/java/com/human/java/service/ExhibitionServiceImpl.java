package com.human.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.ExhibitionDAOImpl;
import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.TicketingSelectVO;
import com.human.java.domain.TicketingVO;

@Service("exhibitionService")
public class ExhibitionServiceImpl implements ExhibitionService{

	@Autowired
	private ExhibitionDAOImpl exhibitionDAO;
	
	@Override
	public int exhibitionInsert(ExhibitionVO vo) {
		
		System.out.println("===============");
		System.out.println("exhibitionInsert 서비스 호출");
		System.out.println("===============");
		
		return 0;
	}

	@Override
	public ExhibitionVO exhibitionList(ExhibitionVO vo) {
		
		System.out.println("===============");
		System.out.println("exhibitionList 서비스 호출");
		System.out.println("===============");
		
		return exhibitionDAO.exhibitionList(vo);
	}
	
	@Override
	public List<ExhibitionVO> exhibitionAll(ExhibitionVO vo) {
		
		
		System.out.println("===============");
		System.out.println("exhibitionAll 서비스 호출");
		System.out.println("===============");
		
		return exhibitionDAO.exhibitionAll(vo);
	}
	
	@Override
	public List<ExhibitionVO> comingExhibition(ExhibitionVO vo) {
		
		
		System.out.println("===============");
		System.out.println("comingExhibition 서비스 호출");
		System.out.println("===============");
		return exhibitionDAO.comingExhibition(vo);
	}

	@Override
	public List<ExhibitionVO> exhibitionSearch(ExhibitionVO vo, String totalDate) {
		
		System.out.println("===============");
		System.out.println("exhibitionSearch 서비스 호출");
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
		
		System.out.println("===============");
		System.out.println("exhibitionDetail 서비스 호출");
		System.out.println("===============");
		
		return exhibitionDAO.exhibitionDetail(vo, id);
	}

	@Override
	public int ticketInsert(TicketingVO vo) {
		
		System.out.println("===============");
		System.out.println("ticketInsert 서비스 호출");
		System.out.println("TicketingVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		return exhibitionDAO.ticketInsert(vo);
	}

	@Override
	public List<TicketingSelectVO> ticketSelect(HashMap map,  String id) {
		
		System.out.println("===============");
		System.out.println("ticketSelect 서비스 호출");
		System.out.println("id:"+id );
		System.out.println("===============");
		
		
		return exhibitionDAO.ticketSelect(map , id);
	}

	
}
