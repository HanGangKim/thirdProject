package com.human.java.service;

import java.util.List;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.TicketingVO;

public interface ExhibitionService {

	
	// 전시회등록
	public int exhibitionInsert(ExhibitionVO vo);
		
	// 전시회 조회
	public ExhibitionVO exhibitionList(ExhibitionVO vo);
	
	public List<ExhibitionVO> exhibitionAll(ExhibitionVO vo);
	
	public List<ExhibitionVO> comingExhibition(ExhibitionVO vo);
	
	public List<ExhibitionVO> exhibitionSearch(ExhibitionVO vo, String totalDate);
	
	public ExhibitionVO exhibitionDetail(ExhibitionVO vo, String id);
	
	// 티켓팅 
	public int ticketInsert(TicketingVO vo);
}
