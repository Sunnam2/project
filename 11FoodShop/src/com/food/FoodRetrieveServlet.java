package com.food;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.FoodDTO;
import com.service.FoodService;


@WebServlet("/FoodRetrieveServlet")
public class FoodRetrieveServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String FCode= request.getParameter("FCode");
		
		FoodService service = new FoodService();
		
		FoodDTO dto = service.FoodRetrieve(FCode);
		request.setAttribute("FoodRetrieve", dto);
	
		
		RequestDispatcher dis=
	request.getRequestDispatcher("FoodRetrieve.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}