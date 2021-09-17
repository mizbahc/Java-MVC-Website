package com.clk.controller;

import com.clk.model.User;
import com.clk.service.ServiceContext;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/home/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		try {
			User user = ServiceContext.getUserService().checkLogin(username,password);
			if(user == null){
				System.out.println("user is null");
				session.setAttribute("wrongLogin", true);
				resp.sendRedirect("login.jsp");
			}else {
				session.setAttribute("user",user);
				resp.sendRedirect("../studyRoomMain.jsp");
			}
		}catch (Exception e){
			e.printStackTrace();
			System.out.println("exception in login");
			resp.sendRedirect("login.jsp");
		}



	}
}
