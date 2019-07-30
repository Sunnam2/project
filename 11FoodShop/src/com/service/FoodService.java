package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.FoodDAO;
import com.dto.FoodDTO;

public class FoodService {

	public List<FoodDTO> FoodList(String fKind) {
		SqlSession session = MySqlSessionFactory.getSession();
		List<FoodDTO> list = null;
		FoodDAO dao= new FoodDAO();
		try {
			list = dao.foodList(session,fKind);
		}finally {
			session.close();
		}
		return list;
	}

	public FoodDTO FoodRetrieve(String fCode) {
		SqlSession session = MySqlSessionFactory.getSession();
		FoodDTO dto = null;
		FoodDAO dao= new FoodDAO();
		try {
			dto = dao.FoodRetrieve(session,fCode);
		}finally {
			session.close();
		}
		return dto;
	}

}