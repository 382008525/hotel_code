package com.model;

public class City
{
	/*
	 * CREATE TABLE CITY(
	 * CITY_NO INT NOT NULL,
	 * CITY_NAME VARVHAR(20) NOT NULL,
	 * PRIMARY KEY(CITY_NO));
	 */
	
	private int city_no;
	
	private String city_name;

	public int getCity_no()
	{
		return city_no;
	}

	public void setCity_no(int cityNo)
	{
		city_no = cityNo;
	}

	public String getCity_name()
	{
		return city_name;
	}

	public void setCity_name(String cityName)
	{
		city_name = cityName;
	}
	
	
}
