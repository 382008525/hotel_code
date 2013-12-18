package com.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

import com.db.DBHelper;
import com.model.Area;
import com.model.City;

public class AreaServlet extends HttpServlet
{
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException
	{
		String type = req.getParameter("type");

		System.out.println(type);
		
		if (type.endsWith("addArea"))
		{
			addArea(req,res);
		}
		else if(type.endsWith("deleteArea"))
		{
			int area_no = Integer.parseInt(req.getParameter("area_no"));
			deleteArea(area_no);
		}
	}

	public void addArea(ServletRequest req, ServletResponse resp)
			throws ServletException, IOException
	{
		int city_no = Integer.parseInt(req.getParameter("city"));
		int area_no = Integer.parseInt(req.getParameter("area_no"));
		String area_name = req.getParameter("area_name");
		
		Area area = new Area();
		area.setArea_no(area_no);
		area.setArea_name(area_name);
		area.setCity_no(city_no);
		
		DBHelper.getInstance().getArea().addArea(area);
	}
	
	public static List<Area> getArea()
	{
		List<Area> list = null;
		
		String sql = "select * from area";
		
		list= DBHelper.getInstance().getArea().getData(sql);
		
		return list;
	}
	
	public static void deleteArea(int area_no)
	{
		System.out.println("-------------------");
		Area area = new Area();
		area.setArea_no(area_no);
		DBHelper.getInstance().getArea().deleteCity(area);
	}
}
