package com.human.java.dao;

import java.util.HashMap;
import java.util.List;

import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.TicketingSelectVO;
import com.human.java.domain.TicketingVO;

public interface ExhibitionDAO {

	// 전시회등록
	public int exhibitionInsert(ExhibitionVO vo);
			
	// 전시회 조회
	public ExhibitionVO exhibitionList(ExhibitionVO vo);
	
	public List<ExhibitionVO> exhibitionAll(ExhibitionVO vo);
	
	public List<ExhibitionVO> comingExhibition(ExhibitionVO vo);
	
	public List<ExhibitionVO> exhibitionSearch(ExhibitionVO vo, String st, String ed);
	
	public ExhibitionVO exhibitionDetail(ExhibitionVO vo, String id);
	
	// 티켓팅 
	public int ticketInsert(TicketingVO vo);
	
	// 티켓팅 내역 조회
	public List<TicketingSelectVO> ticketSelect(HashMap map, String id);
}
