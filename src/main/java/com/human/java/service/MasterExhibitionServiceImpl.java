package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.MasterExhibitionDAOImpl;
import com.human.java.domain.MasterExhibitionVO;

@Service("masterExhibitionService")
public class MasterExhibitionServiceImpl implements MasterExhibitionService{
	
	@Autowired
	private MasterExhibitionDAOImpl masterExhibitionDAO;
	
	@Override
	public List<MasterExhibitionVO>  masterExhibition() {
		
		System.out.println("Service");
		
		return masterExhibitionDAO.masterExhibition();
	}

	
}

