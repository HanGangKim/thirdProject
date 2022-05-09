package com.human.java.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.TicketingSelectVO;
import com.human.java.domain.TicketingVO;

@Repository("exhibitionDAO")
public class ExhibitionDAOImpl implements ExhibitionDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public int exhibitionInsert(ExhibitionVO vo) {
		
		return mybatis.insert(null, vo);
	}

	@Override
	public ExhibitionVO exhibitionList(ExhibitionVO vo) {
		
		return mybatis.selectOne("exhibitionMapper.exhibitionList", vo);
	}

	@Override
	public List<ExhibitionVO> exhibitionAll(ExhibitionVO vo) {

		return mybatis.selectList("exhibitionMapper.exhibitionAll", vo);
	}

	@Override
	public List<ExhibitionVO> comingExhibition(ExhibitionVO vo) {

		return mybatis.selectList("exhibitionMapper.comingExhibition", vo);
	}

	
	@Override
	public List<ExhibitionVO> exhibitionSearch(ExhibitionVO vo, String st, String ed, int endRow) {
		
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("vo", vo);
		parms.put("st", st);
		parms.put("ed", ed);
		parms.put("endRow", endRow+1);

		return mybatis.selectList("exhibitionMapper.exhibitionSearch", parms);
	}

	
	
	@Override
	public List<ExhibitionVO> exhibitionSearchTitle(ExhibitionVO vo) {
		return mybatis.selectList("exhibitionMapper.exhibitionSearchTitle", vo);
	}
	
	
	
	@Override
	public ExhibitionVO exhibitionDetail(ExhibitionVO vo, String id) {
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("vo", vo);
		parms.put("id", id);
		return mybatis.selectOne("exhibitionMapper.exhibitionDetail", parms);
	}

	@Override
	public int ticketInsert(TicketingVO vo) {

				// 결제시 위시리스트 플래그 업데이트
				mybatis.update("wishlistMapper.flagChange" , vo);
		
		return mybatis.insert("ticketingMapper.ticketInsert", vo);

	}

	@Override
	public List<TicketingSelectVO> ticketSelect(HashMap map, String id) {
		
		return mybatis.selectList("ticketingMapper.ticketSelecting", map);
	}

	@Override
	public int companyInsertExhibition(ExhibitionVO vo) {
		
		return mybatis.insert("companyMapper.companyInsertExhibition",vo);
	}

	
	@Override
	public int companyUpdateExhibition(ExhibitionVO vo) {
		
		return mybatis.update("companyMapper.companyUpdateExhibition",vo);
	}

	
	
	@Override
	public List<ExhibitionVO> getExhibitionCompanyList(ExhibitionVO vo, String companyId) {
		
		return mybatis.selectList("companyMapper.companyExhibitionList",companyId);
	}

	@Override
	public ExhibitionVO getExhibitionCompanyDetail(ExhibitionVO vo) {

		return mybatis.selectOne("companyMapper.companyExhibitionDetail",vo);
	}
	
	@Override
	public int exhibitionCompanyExhibitionDelete(ExhibitionVO vo) {

		return mybatis.delete("companyMapper.exhibitionCompanyExhibitionDelete",vo);
	}

	@Override
	public List<ExhibitionVO> randomExhibition(ExhibitionVO vo) {

		return mybatis.selectList("exhibitionMapper.randomExhibition", vo);
	}

	@Override
	public ExhibitionVO lastExhibition(ExhibitionVO vo) {

		return mybatis.selectOne("exhibitionMapper.lastExhibition", vo);
	}

	@Override
	public List<ExhibitionVO> top3Exhibition(ExhibitionVO vo) {
		return mybatis.selectList("exhibitionMapper.top3Exhibition", vo);
	}


}
