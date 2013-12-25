package com.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

import com.db.DBHelper;
import com.model.City;
import com.model.Hotel;
import com.model.Room;

public class RoomServlet extends HttpServlet
{
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException
	{
		String type = req.getParameter("type");

		System.out.println(type);
		
		if (type.endsWith("addRoom"))
		{
			addRoom(req,res);
		}
		else if(type.endsWith("deleteRoom"))
		{
			int room_no = Integer.parseInt(req.getParameter("room_no"));
			deleteRoom(room_no);
		}
	}

	public void addRoom(ServletRequest req, ServletResponse res)
			throws ServletException, IOException
	{
		int hotel_no = Integer.parseInt(req.getParameter("hotel"));
		int room_no = Integer.parseInt(req.getParameter("room_no"));
		double price = Double.parseDouble(req.getParameter("price"));
		int room_type = Integer.parseInt(req.getParameter("room_type"));
		String text_introduction = req.getParameter("text_introduction");
		double space= Double.parseDouble(req.getParameter("space"));
	
		Room room = new Room();
		
		room.setHotel_no(hotel_no);
		room.setRoom_no(room_no);
		room.setText_introduction(text_introduction);
		room.setType(room_type);
		room.setSpace(space);
		room.setPrice(price);
		
		DBHelper.getInstance().getRoom().addRoom(room);
	}
	
	public static List<Room> getRoom()
	{
		List<Room> list = null;

		String sql = "select * from room";

		list = DBHelper.getInstance().getRoom().getData(sql);

		return list;
	}
	
	public static void deleteRoom(int room_no)
	{
		System.out.println("-------------------");
		Room room = new Room();
		room.setRoom_no(room_no);
		DBHelper.getInstance().getRoom().deleteRoom(room);
	}
	
	public static Room getSpecial(int room_no)
	{
		List<Room> list = null;

		String sql = "select * from room where ROOM_NO = "+ room_no;

		list = DBHelper.getInstance().getRoom().getData(sql);

		return list.get(0);
	}
}
