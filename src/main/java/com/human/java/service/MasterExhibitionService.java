package com.human.java.service;

import java.util.List;

import com.human.java.domain.MasterCompanyVO;
import com.human.java.domain.MasterExhibitionVO;

public interface MasterExhibitionService {

	// exhibition select
	public List<MasterExhibitionVO> masterExhibition();

	// exhibition update
	public void masterExhibitionUpdate(MasterExhibitionVO vo);

	// exhibition selectD&R
	public List<MasterExhibitionVO> masterExhibitionDR();
}
