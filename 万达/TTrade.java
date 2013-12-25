package com.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Trade;

public class TTrade extends TBase
{
	private String tableName = "trade";
	
	public List<Trade> getData(String selectSql)
	{
		System.out.println(selectSql);
		List<Trade> list = null;
		Pool pool = null;
		Connection conn = null;
		Statement stmt = null;
		
		try
		{
			pool = Pool.getInstance();
			conn = pool.getConnection();
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(selectSql);
			list = new ArrayList<Trade>();
			Trade trade = null;
			
			while(rs.next())
			{
				trade = new Trade();
				trade.setTrade_no(rs.getInt("TRADE_NO"));
				trade.setLoginname(rs.getString("LOGINNAME"));
				trade.setHotel_no(rs.getInt("HOTEL_NO"));
				trade.setRoom_no(rs.getInt("ROOM_NO"));
				trade.setStart_date(rs.getDate("START_DATE").toString());
				trade.setEnd_date(rs.getDate("END_DATE").toString());
				trade.setTrade_date(rs.getDate("TRADE_DATE").toString());
				trade.setTrade_money(rs.getDouble("TRADE_MONEY"));
				
				list.add(trade);
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

	public boolean addTrade(Trade trade)
	{
		boolean result = add("INSERT INTO "+getTableName()+" VALUES('"+trade.getTrade_no()+"'," +
				"'"+trade.getLoginname()+"','"+trade.getHotel_no()+"','"+trade.getRoom_no()+"'," +
						"'"+trade.getStart_date()+"','"+trade.getEnd_date()+"','"+trade.getTrade_date()+"'," +
								"'"+trade.getTrade_money()+"')");
		return result;
	}
	
	public boolean updateTrade(Trade trade)
	{
		boolean result = update("");
		return result;
	}
	
	public boolean deleteTrade(Trade trade)
	{
			boolean result = delete("");
		return result;
	}
	
	public String getTableName()
	{
		return tableName;
	}
}
