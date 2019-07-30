package com.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.MemberDAO;
import com.dto.MemberDTO;

public class MemberService {

	public void MemberAdd(MemberDTO dto) {
		SqlSession session = MySqlSessionFactory.getSession();
		MemberDAO dao =new MemberDAO();
		try {
			dao.MemberAdd(session,dto);
			session.commit();
		}finally {
			session.close();
		}
	}//end memberAdd

	public MemberDTO login(HashMap<String, String> map) {
		SqlSession session = MySqlSessionFactory.getSession();
		MemberDTO dto =null;
		MemberDAO dao =new MemberDAO();
		try {
			dto = dao.login(session,map);
		}finally {
			session.close();
		}
		return dto;
	}
	
	public MemberDTO FindID(HashMap<String, String> map) {
		SqlSession session = MySqlSessionFactory.getSession();
		MemberDTO dto =null;
		MemberDAO dao =new MemberDAO();
		try {
			dto = dao.findid(session,map);
		}finally {
			session.close();
		}
		return dto;
	}
	
}
