package com.human.java.dao;

import java.util.List;

import com.human.java.domain.ExhibitionVO;

public interface ExhibitionDAO {

	// 전시회등록
	public int exhibitionInsert(ExhibitionVO vo);
			
	// 전시회 조회
	public ExhibitionVO exhibitionList(ExhibitionVO vo);
	
	public List<ExhibitionVO> exhibitionAll(ExhibitionVO vo);
	
	public List<ExhibitionVO> comingExhibition(ExhibitionVO vo);
	
	public List<ExhibitionVO> exhibitionSearch(ExhibitionVO vo, String st, String ed);
	
	public ExhibitionVO exhibitionDetail(ExhibitionVO vo, String id);
}
