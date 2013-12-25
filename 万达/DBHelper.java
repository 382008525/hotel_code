package com.db;

public class DBHelper
{
	private TUser user;
	
	private THotel hotel;
	
	private TRoom room;
	
	private TTrade trade;
	
	private TImage_introduction image_introduction;
	
	private TCity city;
	
	private TArea area;
	
	private TManager manager;
	
	public TArea getArea()
	{
		if(null == area)
		{
			area = new TArea();
		}
		return area;
	}
	
	public TCity getCity()
	{
		if(null == city)
		{
			city = new TCity();
		}
		return city;
	}
	
	public TManager getManager()
	{
		if(null == manager)
		{
			manager = new TManager();
		}
		return manager;
	}
	
	public THotel getHotel()
	{
		if(null == hotel)
		{
			hotel = new THotel();
		}
		return hotel;
	}

	public TRoom getRoom()
	{
		if(null == room)
		{
			room = new TRoom();
		}
		return room;
	}

	public TTrade getTrade()
	{
		if(null == trade)
		{
			trade = new TTrade();
		}
		return trade;
	}

	private static DBHelper instance = null;
	
	private DBHelper()
	{
		
	}
	
	public static DBHelper getInstance()
	{
		if(null == instance)
		{
			instance = new DBHelper();
		}
		return instance;
	}
	
	public TUser getUser()
	{
		if(null == user)
		{
			user = new TUser();
		}
		return user;
	}
	
	public TImage_introduction getImage()
	{
		if(null == image_introduction)
		{
			image_introduction = new TImage_introduction();
		}
		return image_introduction;
	}
}
