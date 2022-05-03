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
		// TODO Auto-generated method stub
		System.out.println("service 호출");
		
		masterExhibitionDAO.masterExhibitionUpdate(vo);
		
	}

	@Override
	public List<MasterExhibitionVO> masterExhibitionDR() {
		return masterExhibitionDAO.masterExhibitionDR();
	}

	
}

