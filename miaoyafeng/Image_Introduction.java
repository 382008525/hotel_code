package com.model;

import java.sql.Blob;

public class Image_Introduction
{
	/*
	 * CREATE TABLE PHOTOINFO(
	 * HOTEL_NO INT NOT NULL,
	 * PHOTOINFOMATION MEDIUMBLOB NOT NULL,
	 * PRIMARY KEY(HOTEL_NO),
	 * FOREIGN KEY (HOTEL_NO) REFERENCES HOTEL(HOTEL_NO));
	 */
	private int hotel_no;
	
	private Blob image;
	
	private String image_name;

	public int getHotel_no()
	{
		return hotel_no;
	}

	public void setHotel_no(int hotelNo)
	{
		hotel_no = hotelNo;
	}

	public Blob getImage()
	{
		return image;
	}

	public void setImage(Blob image)
	{
		this.image = image;
	}

	public String getImage_name()
	{
		return image_name;
	}

	public void setImage_name(String imageName)
	{
		image_name = imageName;
	}
}
