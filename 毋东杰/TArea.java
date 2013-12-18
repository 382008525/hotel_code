package com.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Area;

public class TArea extends TBase
{
	private String table_name = "area";

	public String getTableName()
	{
		return table_name;
	}
	
	public boolean addArea(Area area)
	{
		boolean result = add("INSERT INTO "+getTableName()+" VALUES('"+area.getArea_no()+"'," +
				"'"+area.getArea_name()+"','"+area.getCity_no()+"')");
		return result;
	}
	
	public List<Area> getData(String sql)
	{
		List<Area> list = null;
		Pool pool = null;
		Connection con = null;
		Statement stmt = null;
		
		try
		{
			pool = Pool.getInstance();
			con = pool.getConnection();
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			list = new ArrayList<Area>();
			Area area = null;
			
			while(rs.next())
			{
				area = new Area();
				area.setArea_no(rs.getInt("AREA_NO"));
				area.setArea_name(rs.getString("AREA_NAME"));
				area.setCity_no(rs.getInt("CITY_NO"));
				list.add(area);
			}
			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean deleteCity(Area area)
	{
		boolean result = delete("DELETE FROM "+getTableName()+" WHERE AREA_NO = "+area.getArea_no()+"");
		return result;
	}
	public boolean updateCity(Area area)
	{
		boolean result = update("UPDATE "+getTableName()+" SET CITY_NAME="+area.getArea_name()+"" +
				",CITY_NO="+area.getCity_no()+" WHERE AREA_NO="+area.getArea_no()+"");
		return result;
	}
}
