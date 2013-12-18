package com.model;

public class Area
{
	/*
	 * CREATE TABLE AREA(
	 * AREA_NO INT NOT NULL,
	 * AREA_NAME VARCHAR(20) NOT NULL,
	 * CITY_NO INT NOT NULL,
	 * PRIMARY KEY(AREA_NO,CITY_NO),
	 * FOREIGN KEY(CITY_NO) REFERENCES CITY(CITY_NO));
	 */
	private int area_no;
	
	private String area_name;
	
	private int city_no;

	public int getArea_no()
	{
		return area_no;
	}

	public void setArea_no(int areaNo)
	{
		area_no = areaNo;
	}

	public String getArea_name()
	{
		return area_name;
	}

	public void setArea_name(String areaName)
	{
		area_name = areaName;
	}

	public int getCity_no()
	{
		return city_no;
	}

	public void setCity_no(int cityNo)
	{
		city_no = cityNo;
	}
}
