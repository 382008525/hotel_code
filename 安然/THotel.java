package com.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Hotel;

public class THotel extends TBase
{
	private String tableName = "hotel";
	
	public boolean addHotel(Hotel hotel)
	{
		int has_room = 1;
		if(hotel.isHas_room() == false)
		{
			has_room = 0;
		}
		boolean result = add("INSERT INTO "+getTableName()+" VALUES('"+hotel.getHotel_no()+"'," +
				"'"+hotel.getHotel_name()+"','"+hotel.getCity_no()+"','"+hotel.getArea_no()+"'," +
						"'"+hotel.getAddress()+"','"+hotel.getHotel_telephone()+"','"+has_room+"'," +
								"'"+hotel.getLowest_price()+"','"+hotel.getText_introduction()+"'," +
										"'"+hotel.getRoom_count()+"')");	
		return result;
	}
	
	public List<Hotel> getData(String selectSql)
	{
		System.out.println(selectSql);
		List<Hotel> list = null;
		Pool pool = null;
		Connection conn = null;
		Statement stmt = null;
		
		try
		{
			pool = Pool.getInstance();
			conn = pool.getConnection();
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(selectSql);
			list = new ArrayList<Hotel>();
			Hotel hotel = null;
			
			while(rs.next())
			{
				hotel = new Hotel();
				hotel.setAddress(rs.getString("ADDRESS"));
				hotel.setArea_no(rs.getInt("AREA_NO"));
				hotel.setCity_no(rs.getInt("CITY_NO"));
				hotel.setHotel_telephone(rs.getString("HOTEL_TELEPHONE"));
				hotel.setRoom_count(rs.getInt("ROOM_COUNT"));
				hotel.setHas_room(rs.getBoolean("HAS_ROOM"));
				hotel.setHotel_no(rs.getInt("HOTEL_NO"));
				hotel.setLowest_price(rs.getDouble("LOWEST_PRICE"));
				hotel.setHotel_name(rs.getString("HOTEL_NAME"));
				hotel.setText_introduction(rs.getString("TEXT_INTRODUCTION"));
				list.add(hotel);
			}
			
			rs.close();
			stmt.close();
			conn.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
	
	public boolean updateHotel(Hotel hotel)
	{
		boolean result = update("");
		return result;
	}
	
	public boolean deleteHotel(Hotel hotel)
	{
		boolean result = delete("delete from hotel where HOTEL_NO="+hotel.getHotel_no());
		return result;
	}
	
	public String getTableName()
	{
		return tableName;
	}
}
