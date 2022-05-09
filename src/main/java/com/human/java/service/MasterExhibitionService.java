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

	// 업체가 등록한 전시회 중 승인된 전시회 리스트 조회
	public List<MasterExhibitionVO> masterExhibitionSearchTitleD(MasterExhibitionVO vo, String title);

	// 업체가 등록한 전시회 중 거절된 전시회 리스트 조회
	public List<MasterExhibitionVO> masterExhibitionSearchTitleR(MasterExhibitionVO vo, String title);
}
