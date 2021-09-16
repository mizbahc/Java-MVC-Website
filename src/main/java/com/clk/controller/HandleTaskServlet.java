package com.clk.controller;




import com.clk.model.Task;
import com.clk.model.User;
import com.clk.service.ServiceContext;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/handleTask")
public class HandleTaskServlet  extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String taskBody = req.getParameter("taskBody");
		User user  = (User)session.getAttribute("user");
		Task task = new Task(user,taskBody);
		try {
			if (taskBody.length() > 0){
				boolean success = ServiceContext.getTaskService().saveTask(task);

				resp.sendRedirect("toDoPage.jsp");
			}
			else{
				resp.sendRedirect("toDoPage.jsp");
			}



		}catch (Exception e){
			resp.sendRedirect("toDoPage.jsp");
		}
	}
}
