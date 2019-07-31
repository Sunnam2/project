package com.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.dto.MemberDTO;

public class MemberDAO {

	public void MemberAdd(SqlSession session, MemberDTO dto) {
		int n = session.insert("MemberMapper.memberAdd", dto);
		
	}

	public MemberDTO login(SqlSession session, HashMap<String, String> map) {
		MemberDTO dto =
				session.selectOne("MemberMapper.login", map);
		return dto;
	}

	public MemberDTO FindID(SqlSession session, MemberDTO dto) {
		MemberDTO dto2 =
				session.selectOne("MemberMapper.FindID", dto);
		return dto2;
	}

}
