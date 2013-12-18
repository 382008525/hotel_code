package com.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Image_Introduction;

public class TImage_introduction extends TBase
{
	private String table_name = "image_introduction";
	
	public boolean addImage(Image_Introduction image)
	{
		boolean result = add("INSERT INTO "+getTableName()+" VALUES('"+image.getHotel_no()+"'," +
				"'"+image.getImage()+"',"+image.getImage_name()+")");
		return result;
	}
	
	public List<Image_Introduction> getData(String sql)
	{
		System.out.println(sql);
		List<Image_Introduction> list = null;
		Pool pool = null;
		Connection conn = null;
		Statement stmt = null;
		
		try
		{
			pool = Pool.getInstance();
			conn = pool.getConnection();
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			list = new ArrayList<Image_Introduction>();
			Image_Introduction image = null;
			
			while(rs.next())
			{
				image = new Image_Introduction();
				image.setHotel_no(rs.getInt("HOTEL_NO"));
				image.setImage(rs.getBlob("IMAGE"));
				image.setImage_name(rs.getString("IMAGE_NAME"));
				list.add(image);
			}
			rs.close();
			stmt.close();
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean deleteImage(Image_Introduction image)
	{
		boolean result = delete("DELETE FROM "+getTableName()+" WHERE HOTEL_NO = "+image.getHotel_no()+"");
		return result;
	}
	
	public String getTableName()
	{
		return table_name;
	}
}
