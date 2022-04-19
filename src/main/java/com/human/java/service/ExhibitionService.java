package com.human.java.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.TicketingSelectVO;
import com.human.java.domain.TicketingVO;

public interface ExhibitionService {

	
	// 전시회등록
	public int exhibitionInsert(ExhibitionVO vo);
		
	// 전시회 조회
	public ExhibitionVO exhibitionList(ExhibitionVO vo);
	
	public List<ExhibitionVO> exhibitionAll(ExhibitionVO vo);
	
	public List<ExhibitionVO> comingExhibition(ExhibitionVO vo);
	
//	public List<ExhibitionVO> exhibitionSearch(ExhibitionVO vo, String totalDate);
	
	public List<ExhibitionVO> exhibitionSearch(ExhibitionVO vo, String totalDate, int endRow);
	
	public ExhibitionVO exhibitionDetail(ExhibitionVO vo, String id);
	
	// 티켓팅 
	public int ticketInsert(TicketingVO vo);
	
	// 티켓팅 내역 조회
	public List<TicketingSelectVO> ticketSelect(HashMap map, String id);
	
	// 업체 전시회 등록
	public int companyInsertExhibition (ExhibitionVO vo);
	
	// 업체 전시회 수정 
	public int companyUpdateExhibition (ExhibitionVO vo);
 	
	// 업체 전시회 등록 리스트
	public List<ExhibitionVO> getExhibitionCompanyServiceList(ExhibitionVO vo , String companyId);
	
	// 업체 전시회 등록 상세조회 
	public ExhibitionVO getExhibitionCompanyServiceDetail(ExhibitionVO vo);
	
}
