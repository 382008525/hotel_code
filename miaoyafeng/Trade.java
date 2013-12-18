package com.model;

public class Trade
{
	/*
	 * CREATE TABLE TRADE( 
	 * USER_NO INT NOT NULL, 
	 * HOTEL_NO INT NOT NULL, 
	 * ROOM_NO INT NOT NULL, 
	 * START_DATE DATE NOT NULL, 
	 * END_DATE DATE NOT NULL,
	 * TRADE_DATE DATE NOT NULL, 
	 * PRICE DOUBLE NOT NULL, PRIMARY KEY(USER_NO,HOTEL_NO,ROOM_NO,TRADE_DATE), 
	 * FOREIGN KEY(HOTEL_NO) REFERENCES HOTEL(HOTEL_NO));
	 */
	private int trade_no;
	
	private String loginname;

	private int hotel_no;
	
	private int room_no;
	
	private String start_date;
	
	private String end_date;
	
	private String trade_date;
	
	private double trade_money;

	public int getTrade_no()
	{
		return trade_no;
	}

	public void setTrade_no(int tradeNo)
	{
		trade_no = tradeNo;
	}

	public String getLoginname()
	{
		return loginname;
	}

	public void setLoginname(String loginname)
	{
		this.loginname = loginname;
	}

	public int getHotel_no()
	{
		return hotel_no;
	}

	public void setHotel_no(int hotelNo)
	{
		hotel_no = hotelNo;
	}

	public int getRoom_no()
	{
		return room_no;
	}

	public void setRoom_no(int roomNo)
	{
		room_no = roomNo;
	}

	public String getStart_date()
	{
		return start_date;
	}

	public void setStart_date(String startDate)
	{
		start_date = startDate;
	}

	public String getEnd_date()
	{
		return end_date;
	}

	public void setEnd_date(String endDate)
	{
		end_date = endDate;
	}

	public String getTrade_date()
	{
		return trade_date;
	}

	public void setTrade_date(String tradeDate)
	{
		trade_date = tradeDate;
	}

	public double getTrade_money()
	{
		return trade_money;
	}

	public void setTrade_money(double tradeMoney)
	{
		trade_money = tradeMoney;
	}
}
