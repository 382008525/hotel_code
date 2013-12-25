package com.model;

public class Hotel
{
	/*
	 * CREATE TABLE HOTEL( 
	 * NAME VARCHAR(10) NOT NULL, 
	 * HOTEL_NO INT NOT NULL,
	 * CITY VARCHAR(10) NOT NULL,
	 * AREA VARCHAR(20) NOT NULL, 
	 * ADDRESS VARCHAR(20)NOT NULL,
	 * HAS_ROOM BOOL NOT NULL, 
	 * LOWEST_PRICE DOUBLE NOT NULL, 
	 * PRIMARY KEY(HOTEL_NO));
	 */
	private String hotel_name;
	
	private int hotel_no;

	private int city_no;
	
	private int area_no;
	
	private String address;
	
	private boolean has_room;
	
	private double lowest_price;
	
	private String text_introduction;
	
	private int room_count;
	
	private String hotel_telephone;

	public String getHotel_name()
	{
		return hotel_name;
	}

	public void setHotel_name(String hotelName)
	{
		hotel_name = hotelName;
	}

	public int getHotel_no()
	{
		return hotel_no;
	}

	public void setHotel_no(int hotelNo)
	{
		hotel_no = hotelNo;
	}

	public int getCity_no()
	{
		return city_no;
	}

	public void setCity_no(int cityNo)
	{
		city_no = cityNo;
	}

	public int getArea_no()
	{
		return area_no;
	}

	public void setArea_no(int areaNo)
	{
		area_no = areaNo;
	}

	public String getAddress()
	{
		return address;
	}

	public void setAddress(String address)
	{
		this.address = address;
	}

	public boolean isHas_room()
	{
		return has_room;
	}

	public void setHas_room(boolean hasRoom)
	{
		has_room = hasRoom;
	}

	public double getLowest_price()
	{
		return lowest_price;
	}

	public void setLowest_price(double lowestPrice)
	{
		lowest_price = lowestPrice;
	}

	public String getText_introduction()
	{
		return text_introduction;
	}

	public void setText_introduction(String textIntroduction)
	{
		text_introduction = textIntroduction;
	}

	public int getRoom_count()
	{
		return room_count;
	}

	public void setRoom_count(int roomCount)
	{
		room_count = roomCount;
	}

	public String getHotel_telephone()
	{
		return hotel_telephone;
	}

	public void setHotel_telephone(String hotelTelephone)
	{
		hotel_telephone = hotelTelephone;
	}
}
