package com.service;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

import com.db.DBHelper;
import com.model.City;

public class CityServlet extends HttpServlet
{
	public void service(ServletRequest req, ServletResponse resp)
			throws ServletException, IOException
	{
		String type = req.getParameter("type");
		System.out.println(type);
		if(type.endsWith("addCity"))
		{
			addCity(req,resp);
		}
		else if(type.endsWith("deleteCity"))
		{
			int city_no = Integer.parseInt(req.getParameter("city_no"));
			deleteCity(city_no);
		}
	}
	
	public void addCity(ServletRequest req, ServletResponse resp)
	throws ServletException, IOException
	{
		int city_no = Integer.parseInt(req.getParameter("city_no"));
		String city_name = req.getParameter("city_name");
		
		City city = new City();
		city.setCity_no(city_no);
		city.setCity_name(city_name);
		
		DBHelper.getInstance().getCity().addCity(city);
	}
	
	public static List<City> getCity()
	{
		List<City> list = null;
		
		String sql = "select * from city";
		
		list = DBHelper.getInstance().getCity().getData(sql);
		
		return list;
	}
	
	public static void deleteCity(int city_no)
	{
		System.out.println("-------------------");
		City city = new City();
		city.setCity_no(city_no);
		DBHelper.getInstance().getCity().deleteCity(city);
	}
}
