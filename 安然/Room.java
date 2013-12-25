package com.model;

public class Room
{
	/*
	 * CREATE TABLE ROOM( 
	 * ROOM_NO INT NOT NULL, 
	 * HOTEL_NO INT NOT NULL,
	 * HOTEL_NAME VARCHAR(20) NOT NULL, 
	 * PRICE DOUBLE NOT NULL, 
	 * GRADE INT NOT NULL, 
	 * SPACE DOUBLE NOT NULL, 
	 * TEXT_INTRODUCTION TEXT, 
	 * PRIMARY KEY(HOTEL_NO,ROOM_NO), 
	 * FOREIGN KEY(HOTEL_NO) REFERENCES HOTEL(HOTEL_NO));
	 */
	
	private int room_no;
	
	private int hotel_no;
	
	private double price;

	private int type;
	
	private double space;
	
	private String text_introduction;
	
	
	public int getRoom_no()
	{
		return room_no;
	}

	public void setRoom_no(int roomNo)
	{
		room_no = roomNo;
	}

	public int getHotel_no()
	{
		return hotel_no;
	}

	public void setHotel_no(int hotelNo)
	{
		hotel_no = hotelNo;
	}

	public double getPrice()
	{
		return price;
	}

	public void setPrice(double price)
	{
		this.price = price;
	}

	public int getType()
	{
		return type;
	}

	public void setType(int type)
	{
		this.type = type;
	}

	public double getSpace()
	{
		return space;
	}

	public void setSpace(double space)
	{
		this.space = space;
	}

	public String getText_introduction()
	{
		return text_introduction;
	}

	public void setText_introduction(String textIntroduction)
	{
		text_introduction = textIntroduction;
	}
}
