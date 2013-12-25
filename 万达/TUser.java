package com.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.User;

public class TUser extends TBase
{
	private String tableName = "user";

	public List<User> getData(String selectSql)
	{
		System.out.println(selectSql);
		List<User> list = null;
		Pool pool = null;
		Connection conn = null;
		Statement stmt = null;
		try
		{
			pool = Pool.getInstance();
			conn = pool.getConnection();
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(selectSql);
			list = new ArrayList<User>();
			User user = null;
			
			while(rs.next())
			{
				user = new User();
				user.setAddress(rs.getString("ADDRESS"));
				user.setAge(rs.getInt("AGE"));
				user.setGender(rs.getString("GENDER"));
				user.setID(rs.getString("ID"));
				user.setLoginname(rs.getString("LOGINNAME"));
				user.setPassword(rs.getString("PASSWORD"));
				user.setRepassword(rs.getString("REPASSWORD"));
				user.setTelephone(rs.getString("TELEPHONE"));
				user.setUsername(rs.getString("USERNAME"));
				list.add(user);
			}
			rs.close();
		} catch (Exception e)
		{
			e.printStackTrace();
		}

		return list;
	}

	public boolean addUser(User user)
	{
		boolean result = add("INSERT INTO "+getTableName()+" VALUES('"+user.getLoginname()+"'," +
				"'"+user.getUsername()+"','"+user.getPassword()+"','"+user.getRepassword()+"'," +
						"'"+user.getAge()+"','"+user.getGender()+"','"+user.getID()+"'," +
								"'"+user.getAddress()+"','"+user.getTelephone()+"')");
		return result;
	}

	public boolean updateUser(User user)
	{
		boolean result = update("update "+getTableName()+" set PASSWORD = '"+user.getPassword()+"'" +
				"where LOGINNAME='"+user.getLoginname()+"'");
		return result;
	}

	public boolean deleteUser()
	{
		boolean result = delete("");
		return result;
	}

	@Override
	public String getTableName()
	{
		return tableName;
	}
	
}
