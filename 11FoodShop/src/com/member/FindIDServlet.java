package com.member;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.MemberDTO;



@WebServlet("/FindIDServlet")
public class FindIDServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nickname = request.getParameter("nickname");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("nickname", nickname);
		map.put("phone1", phone1);
		map.put("phone2", phone2);
		
	}		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
