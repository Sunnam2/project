package com.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.FoodDTO;
import com.service.FoodService;


@WebServlet("/mainservlet")
public class Mainservlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		FoodService service = new FoodService();
		
		List<FoodDTO> list = service.FoodList("FoodIngredients");
		request.setAttribute("FoodList", list);
		
	RequestDispatcher dis = request.getRequestDispatcher("Main.jsp");
	dis.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
