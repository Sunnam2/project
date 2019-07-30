package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.FoodDTO;

public class FoodDAO {

		public List<FoodDTO> foodList(SqlSession session, String fKind) {
		List<FoodDTO> list = session.selectList("FoodMapper.FoodList" , fKind);
		return list;
	}

		public FoodDTO FoodRetrieve(SqlSession session, String fCode) {
			FoodDTO dto =session.selectOne("FoodMapper.FoodRetrieve",fCode);
						return dto;
					}
}