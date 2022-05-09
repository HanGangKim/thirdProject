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
	
	// 전시회등록
	@Override
	public int exhibitionInsert(ExhibitionVO vo) {
		
		return 0;
	}

	// 전시회 조회
	@Override
	public ExhibitionVO exhibitionList(ExhibitionVO vo) {
		
		return exhibitionDAO.exhibitionList(vo);
	}
	
	// 전시회 전체 조회
	@Override
	public List<ExhibitionVO> exhibitionAll(ExhibitionVO vo) {
		
		return exhibitionDAO.exhibitionAll(vo);
	}
	
	// 다가오는 전시회 조회
	@Override
	public List<ExhibitionVO> comingExhibition(ExhibitionVO vo) {

		return exhibitionDAO.comingExhibition(vo);
	}


	// 기간 검색 전시회 조회
	@Override
	public List<ExhibitionVO> exhibitionSearch(ExhibitionVO vo, String totalDate, int endRow) {
		
		// yyyy-mm-dd to yyyy-mm-dd 를 시작 날짜와 종료날짜 분류해주는 데이터 전처리
		String[] date=totalDate.split(" to ");
		String st = date[0];
		st = st.replace("-", ".");
		String ed = date[1];
		ed = ed.replace("-", ".");
		
		return exhibitionDAO.exhibitionSearch(vo,st,ed,endRow);
	}
	
	// 전시회 이름 검색
	@Override
	public List<ExhibitionVO> exhibitionSearchTitle(ExhibitionVO vo) {
		
		return exhibitionDAO.exhibitionSearchTitle(vo);
	}
	
	// 전시회 상세 조회
	@Override
	public ExhibitionVO exhibitionDetail(ExhibitionVO vo, String id) {
		
		return exhibitionDAO.exhibitionDetail(vo, id);
	}

	// 티켓팅 삽입
	@Override
	public int ticketInsert(TicketingVO vo) {
		
		return exhibitionDAO.ticketInsert(vo);
	}

	// 티켓팅 내역 조회
	@Override
	public List<TicketingSelectVO> ticketSelect(HashMap map,  String id) {
		
		return exhibitionDAO.ticketSelect(map , id);
	}

	// 업체 전시회 등록
	@Override
	public int companyInsertExhibition(ExhibitionVO vo) {
		
		return exhibitionDAO.companyInsertExhibition(vo);
	}

	// 업체가 등록한 전시회 수정 
	@Override
	public int companyUpdateExhibition(ExhibitionVO vo) {
		
		return exhibitionDAO.companyUpdateExhibition(vo);
	}
	
	// 업체가 등록한 전시회 조회
	@Override
	public List<ExhibitionVO> getExhibitionCompanyServiceList(ExhibitionVO vo, String companyId) {
		
		return exhibitionDAO.getExhibitionCompanyList(vo,companyId);
	}

	// 업체가 등록한 전시회 상세 조회
	@Override
	public ExhibitionVO getExhibitionCompanyServiceDetail(ExhibitionVO vo) {
		
		return exhibitionDAO.getExhibitionCompanyDetail(vo);
	}

	// 업체가 등록한 전시회 삭제
	@Override
	public int exhibitionCompanyExhibitionDelete(ExhibitionVO vo) {
		return	exhibitionDAO.exhibitionCompanyExhibitionDelete(vo);
		
	}

	// 전시회 랜덤으로 가져오기
	@Override
	public List<ExhibitionVO> randomExhibition(ExhibitionVO vo) {
		return exhibitionDAO.randomExhibition(vo);
	}

	// 종료날짜가 가장 빠른 전시회 정보 조회
	@Override
	public ExhibitionVO lastExhibition(ExhibitionVO vo) {
		return exhibitionDAO.lastExhibition(vo);
	}

	// 예매횟수가 많은 탑3 전시회 정보 조회
	@Override
	public List<ExhibitionVO> top3Exhibition(ExhibitionVO vo) {
		
		return exhibitionDAO.top3Exhibition(vo);
	}
	
	
	
}
