package com.human.java.dao;

import java.util.List;

import com.human.java.domain.MasterExhibitionVO;
import com.human.java.domain.MasterExhibitionVO;

public interface MasterExhibitionDAO {
	
	// select exhibition
	public List<MasterExhibitionVO> masterExhibition();
	
	// update exhibition
	void masterExhibitionUpdate(MasterExhibitionVO vo);
	
	// select exhibition
	public List<MasterExhibitionVO> masterExhibitionDR();
	
	public List<MasterExhibitionVO> masterExhibitionSearchTitleD(MasterExhibitionVO vo, String title);
	
	public List<MasterExhibitionVO> masterExhibitionSearchTitleR(MasterExhibitionVO vo, String title);
	
}

