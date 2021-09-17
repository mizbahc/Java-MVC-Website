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

@WebServlet("/home/register")
public class RegistrationServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();


		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String passwordConfirm = req.getParameter("passwordConfirm");

		try {
			if(!(password.equals(passwordConfirm))){
				session.setAttribute("wrongInputInRegistration", true);
				resp.sendRedirect("register.jsp");
			}else{
				User user = new User(firstName,lastName,username,password);
				if(	ServiceContext.getUserService().saveUser(user)){
					session.setAttribute("successfulRegistration", true);
					resp.sendRedirect("../index.jsp");
				}
			}
		}catch (Exception e){
			e.printStackTrace();
			System.out.println("exception in register");
			resp.sendRedirect("register.jsp");

		}
	}
}
