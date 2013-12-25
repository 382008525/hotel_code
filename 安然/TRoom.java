package com.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Room;

public class TRoom extends TBase
{
	private String tableName = "room";

	public boolean addRoom(Room room)
	{
		boolean result = add("INSERT INTO "+getTableName()+" VALUES('"+room.getHotel_no()+"'," +
				"'"+room.getRoom_no()+"','"+room.getPrice()+"','"+room.getType()+"','"+room.getSpace()+"'," +
						"'"+room.getText_introduction()+"')");
		return result;
	}
	
	public boolean deleteRoom(Room room)
	{
		boolean result = delete("delete from room where ROOM_NO = "+room.getRoom_no());
		return result;
	}
	
	public List<Room> getData(String selectSql)
	{
		List<Room> list = null;
		Pool pool = null;
		Connection conn = null;
		Statement stmt = null;
		
		try
		{
			pool = Pool.getInstance();
			conn = pool.getConnection();
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(selectSql);
			Room room = null;
			list = new ArrayList<Room>();
			while(rs.next())
			{
				room = new Room();
				room.setRoom_no(rs.getInt("ROOM_NO"));
				room.setHotel_no(rs.getInt("HOTEL_NO"));
				room.setPrice(rs.getDouble("PRICE"));
				room.setSpace(rs.getDouble("SPACE"));
				room.setType(rs.getInt("TYPE"));
				room.setText_introduction(rs.getString("TEXT_INTRODUCTION"));
				list.add(room);
			}
			rs.close();
		} catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
	
	public boolean updateRoom(Room room)
	{
		boolean result = update("");
		return result;
	}
	
	public String getTableName()
	{
		return tableName;
	}
}
