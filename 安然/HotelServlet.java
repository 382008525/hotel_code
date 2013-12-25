package com.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

import com.db.DBHelper;
import com.model.Hotel;

public class HotelServlet extends HttpServlet
{
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException
	{
		String type = req.getParameter("type");
		
		System.out.println(type);
		
		if (type.endsWith("addHotel"))
		{
			addHotel(req, res);
		}
		else if(type.endsWith("deleteHotel"))
		{
			int hotel_no = Integer.parseInt(req.getParameter("hotel_no"));
			deleteHotel(hotel_no);
		}
	}

	public void addHotel(ServletRequest req, ServletResponse resp)
			throws ServletException, IOException
	{
		int city_no = Integer.parseInt(req.getParameter("city"));
		int area_no = Integer.parseInt(req.getParameter("area"));
		int hotel_no = Integer.parseInt(req.getParameter("hotel_no"));
		int room_count = Integer.parseInt(req.getParameter("room_count"));
		String hotel_name = req.getParameter("hotel_name");
		String text_introduction = req.getParameter("text_introduction");
		double lowest_price = Double.parseDouble(req.getParameter("lowest_price"));
		String address = req.getParameter("address");
		String hotel_telephone = req.getParameter("hotel_telephone");

		Hotel hotel = new Hotel();
		hotel.setArea_no(area_no);
		hotel.setCity_no(city_no);
		hotel.setAddress(address);
		hotel.setText_introduction(text_introduction);
		hotel.setHotel_name(hotel_name);
		hotel.setHotel_no(hotel_no);
		hotel.setHotel_telephone(hotel_telephone);
		hotel.setRoom_count(room_count);
		hotel.setLowest_price(lowest_price);

		DBHelper.getInstance().getHotel().addHotel(hotel);
	}

	public static List<Hotel> getHotel()
	{
		List<Hotel> list = null;

		String sql = "select * from hotel";

		list = DBHelper.getInstance().getHotel().getData(sql);

		return list;
	}
	
	public void deleteHotel(int hotel_no)
	{
		Hotel hotel = new Hotel();
		hotel.setHotel_no(hotel_no);
		DBHelper.getInstance().getHotel().deleteHotel(hotel);
	}
	public static Hotel getSpecial(int hotel_no)
	{
		List<Hotel> list = null;

		String sql = "select * from hotel where HOTEL_NO = "+ hotel_no;

		list = DBHelper.getInstance().getHotel().getData(sql);

		return list.get(0);
	}
}
