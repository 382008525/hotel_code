package com.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.db.DBHelper;
import com.model.Hotel;
import com.model.Trade;
import com.model.User;

public class TradeServlet extends HttpServlet
{
	public void service(ServletRequest req, ServletResponse resp)
			throws ServletException, IOException
	{
		String type = req.getParameter("type");
		if (type.endsWith("getTrade"))
		{
			getTrade(req, resp);
		}
	}

	public static List<Trade> getTrade(ServletRequest req, ServletResponse resp)
			throws ServletException, IOException
	{
		List<Trade> list = null;
		HttpServletRequest request = (HttpServletRequest) req;
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		String sql = "select * from Trade where LOGINNAME='"
				+ user.getLoginname() + "'";
		list = DBHelper.getInstance().getTrade().getData(sql);
		System.out.println(list.size());
		return list;
	}

	public static void getTradeDetail(ServletRequest req, ServletResponse resp)
			throws ServletException, IOException
	{
		HttpServletRequest request = (HttpServletRequest) req;
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		String sql1 = "select * from Trade where LOGINNAME='"
			+ user.getLoginname() + "'";
		Trade trade = DBHelper.getInstance().getTrade().getData(sql1).get(0);
		String sql2 = "select * from Hotel where HOTEL_NO='"+trade.getHotel_no()+"'";
		Hotel hotel = DBHelper.getInstance().getHotel().getData(sql2).get(0);
		session.setAttribute("hotel",hotel);
	}
}
