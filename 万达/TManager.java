package com.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Manager;

public class TManager extends TBase
{
	private String table_name = "manager";

	public boolean addManager(Manager manager)
	{
		boolean result = add("INSERT INTO "+getTableName()+" VALUES('"+manager.getManager_name()+"'," +
				"'"+manager.getManager_password()+"','"+manager.getAuthority()+"')");
		return result;
	}

	public boolean deleteManager(String sql)
	{
		boolean result = delete(sql);
		return result;
	}

	public boolean updateManager(String sql)
	{
		boolean result = update(sql);
		return result;
	}
	
	public List<Manager> getData(String sql)
	{
		List<Manager> list = null;
		
		Pool pool = null;
		Connection con = null;
		Statement stmt = null;
		
		try
		{
			pool = Pool.getInstance();
			con = pool.getConnection();
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			list = new ArrayList<Manager>();
			Manager manager = null;
			while(rs.next())
			{
				manager = new Manager();
				manager.setManager_name(rs.getString("MANAGER_NAME"));
				manager.setManager_password(rs.getString("MANAGER_PASSWORD"));
				manager.setAuthority(rs.getInt("AUTHORITY"));
				list.add(manager);
			}
			rs.close();
			con.close();
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
	
	public String getTableName()
	{
		return table_name;
	}
}
