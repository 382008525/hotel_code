package com.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookAction extends HttpServlet
{
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException
	{
		String type = req.getParameter("type");

		System.out.println(type);

		if (type.endsWith("book"))
		{
			book(req,res);
		}
	}

	public void book(ServletRequest req, ServletResponse res)
			throws ServletException, IOException
	{
		int hotel_no = Integer.parseInt(req.getParameter("hotel_no"));
		System.out.println(hotel_no);
		HttpServletRequest request = (HttpServletRequest) req;
		req.setAttribute("hotel_no",hotel_no);
		request.getRequestDispatcher("afterbook.jsp").forward(req,res);
	}
}
