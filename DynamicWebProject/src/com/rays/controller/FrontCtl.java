package com.rays.controller;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.sun.net.httpserver.Filter.Chain;

@WebFilter(filterName = "FrontCtl", urlPatterns = { "*.do" })
public class FrontCtl implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request= (HttpServletRequest) req;
		ServletResponse response= (ServletResponse) res;
		HttpSession session = request.getSession();
		
		// session.setMaxInactiveInterval(20);


		if (session.getAttribute("user") == null) {

			request.setAttribute("msg", "Your session is expired.. please login again");
			RequestDispatcher rd = request.getRequestDispatcher("UserView.jsp");
			rd.forward(request, response);

		} else {
			chain.doFilter(request, response);
		
	}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
