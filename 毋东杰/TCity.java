package com.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.City;

public class TCity extends TBase
{
	private String table_name = "city";
	
	public String getTableName()
	{
		return table_name;
	}
	
	public boolean addCity(City city)
	{
		boolean result = add("INSERT INTO "+getTableName()+" VALUES('"+city.getCity_no()+"'," +
				"'"+city.getCity_name()+"')");
		
		return result;
	}
	
	public List<City> getData(String sql)
	{
		List<City> list = null;
		Pool pool = null;
		Connection con = null;
		Statement stmt = null;
		
		try
		{
			pool = Pool.getInstance();
			con = pool.getConnection();
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			list = new ArrayList<City>();
			City city = null;
			
			while(rs.next())
			{
				city = new City();
				city.setCity_no(rs.getInt("CITY_NO"));
				city.setCity_name(rs.getString("CITY_NAME"));
				list.add(city);
			}
			rs.close();
			con.close();
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	public boolean deleteCity(City city)
	{
		boolean result = delete("DELETE FROM "+getTableName()+" WHERE CITY_NO = "+city.getCity_no()+"");
		return result;
	}
	public boolean updateCity(City city)
	{
		boolean result = update("UPDATE "+getTableName()+" SET CITY_NAME="+city.getCity_name()+"" +
				" WHERE CITY_NO="+city.getCity_no()+"");
		return result;
	}
}
