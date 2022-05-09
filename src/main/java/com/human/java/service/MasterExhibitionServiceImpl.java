package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.MasterExhibitionDAOImpl;
import com.human.java.domain.MasterCompanyVO;
import com.human.java.domain.MasterExhibitionVO;

@Service("masterExhibitionService")
public class MasterExhibitionServiceImpl implements MasterExhibitionService{
	
	@Autowired
	private MasterExhibitionDAOImpl masterExhibitionDAO;
	
	// select exhibition
	@Override
	public List<MasterExhibitionVO>  masterExhibition() {
		
		return masterExhibitionDAO.masterExhibition();
	}
	
	// update exhibition
	@Override
	public void masterExhibitionUpdate(MasterExhibitionVO vo) {
		
		masterExhibitionDAO.masterExhibitionUpdate(vo);
	}

	// exhibition selectD&R 승인 거절 모두
	@Override
	public List<MasterExhibitionVO> masterExhibitionDR() {
		
		return masterExhibitionDAO.masterExhibitionDR();
	}

	// 업체가 등록한 전시회 중 승인된 전시회 리스트 조회
	@Override
	public List<MasterExhibitionVO> masterExhibitionSearchTitleD(MasterExhibitionVO vo, String title) {
		
		return masterExhibitionDAO.masterExhibitionSearchTitleD(vo, title);
	}

	// 업체가 등록한 전시회 중 거절된 전시회 리스트 조회
	@Override
	public List<MasterExhibitionVO> masterExhibitionSearchTitleR(MasterExhibitionVO vo, String title) {

		return masterExhibitionDAO.masterExhibitionSearchTitleR(vo, title);
	}

	
}

