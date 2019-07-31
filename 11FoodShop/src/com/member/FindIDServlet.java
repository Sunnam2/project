package com.member;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.service.MemberService;



@WebServlet("/FindIDServlet")
public class FindIDServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nickname = request.getParameter("nickname");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		
		MemberDTO dto = new MemberDTO();
		dto.setNickname(nickname);
		dto.setPhone1(phone1);
		dto.setPhone2(phone2);
		System.out.println("****************");
		System.out.println(nickname);
		System.out.println(phone1);
		System.out.println(phone2);
		
		MemberService s = new MemberService();
		
		MemberDTO xxx = s.FindID(dto);
		System.out.println(xxx);
		String nextPage= null;
		if(xxx==null) {
			nextPage="login.jsp";
		}
		else {
			nextPage="FindIDend.jsp";
			request.setAttribute("userid2", xxx);
		}
		RequestDispatcher dis=
				request.getRequestDispatcher(nextPage);
		dis.forward(request, response);
		}		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
