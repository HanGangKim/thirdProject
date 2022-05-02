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
	
	public List<ExhibitionVO> exhibitionSearch(ExhibitionVO vo, String st, String ed, int endRow);
	
	public List<ExhibitionVO> exhibitionSearchTitle(ExhibitionVO vo , String title);
	
	public ExhibitionVO exhibitionDetail(ExhibitionVO vo, String id);
	
	// 티켓팅 
	public int ticketInsert(TicketingVO vo);
	
	// 티켓팅 내역 조회
	public List<TicketingSelectVO> ticketSelect(HashMap map, String id);
	
	// 업체 전시회 등록
	public int companyInsertExhibition(ExhibitionVO vo);
	
	// 업체 전시회 수정 
	public int companyUpdateExhibition(ExhibitionVO vo);
	
	// 업체 전시회 조회
	public List<ExhibitionVO> getExhibitionCompanyList(ExhibitionVO vo , String companyId);
	
	// 업체 전시회 상세조회
	public ExhibitionVO getExhibitionCompanyDetail(ExhibitionVO vo);
	
	// 업체 전시회 등록 삭제
	int exhibitionCompanyExhibitionDelete(ExhibitionVO vo);
	
	// 랜덤뽑기
	public List<ExhibitionVO> randomExhibition(ExhibitionVO vo);
	
	// 마감임박
	public ExhibitionVO lastExhibition(ExhibitionVO vo);
	
	public List<ExhibitionVO> top3Exhibition(ExhibitionVO vo);
	
}
