package com.clk.filter;

import com.clk.service.UserService;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AuthFilter implements Filter {

	private static final String[] publicURLs = {"/home/", "index.jsp"};

	private UserService userService;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		userService = new UserService();
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpSession session = httpRequest.getSession();

		boolean isLoggedIn = (session != null) && (session.getAttribute("user") != null);

		boolean isLoginURI = httpRequest.getRequestURI().endsWith("/home/login");
		boolean isLoginPage = httpRequest.getRequestURI().endsWith("/home/login.jsp");

		if (isLoggedIn && (isLoginPage || isLoginURI)){
			RequestDispatcher requestDispatcher = httpRequest.getRequestDispatcher("../index.jsp");
			requestDispatcher.forward(request, response);
		}else if (!isLoggedIn && isLoginRequired(httpRequest)){
			RequestDispatcher requestDispatcher = httpRequest.getRequestDispatcher("/home/login.jsp");
			requestDispatcher.forward(request, response);
		}else {
			chain.doFilter(request, response);

		}

	}

	@Override
	public void destroy() {

	}

	private boolean isLoginRequired(HttpServletRequest request){
		String requestUrl = request.getRequestURL().toString();
		for (String publicUrl: publicURLs) {
			if (requestUrl.contains(publicUrl)){
				return false;
			}
		}
		if(requestUrl.endsWith("_war/") || requestUrl.endsWith("_war_exploded/" )){
			return false;
		}
		return true;
	}
}
