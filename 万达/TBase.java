package com.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.tool.LogWrite;


/**
 * @author yang 数据库操作基类
 */ 
public abstract class TBase {

	// 添加新数据
	protected boolean add(String sql) {
		System.out.println(sql);
		Pool pool = null;
		Connection conn = null;
		Statement stmt = null;
		try {
			pool = Pool.getInstance();
			conn = pool.getConnection();
			stmt = conn.createStatement();
			stmt.clearBatch();
			stmt.addBatch(sql);
			stmt.executeBatch();
		} catch (Exception e) {
			// TODO: handle exception
			LogWrite.getInstance()
					.write(getTableName() + " -> addNewData() -> e = ",
							e.getMessage());
			return false;
		} finally {
			if (pool != null) {
				pool.freeConnection(conn);
				pool = null;
			}
			conn = null;
			stmt = null;
		}
		return true;
	}

	// 更新数据
	protected boolean update(String sql) {
		Pool pool = null;
		Connection conn = null;
		Statement stmt = null;
		System.out.println(sql);
		try {
			pool = Pool.getInstance();
			conn = pool.getConnection();
			stmt = conn.createStatement();
			stmt.clearBatch();
			stmt.addBatch(sql);
			stmt.executeBatch();
		} catch (Exception e) {
			// TODO: handle exception
			LogWrite.getInstance()
					.write(getTableName() + " -> updateData() -> e = ",
							e.getMessage());
			return false;
		} finally {
			if (pool != null) {
				pool.freeConnection(conn);
				pool = null;
			}
			conn = null;
			stmt = null;
		}
		return true;
	}

	// 获得指定条件数据总数
	protected long getCount(String sql) {
		
		long result = -1;
		Pool pool = null;
		Connection conn = null;
		Statement stmt = null;

		try {
			pool = Pool.getInstance();
			conn = pool.getConnection();
			stmt = conn.createStatement();

			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				result = rs.getInt(1);
			}
			rs.close();
			rs = null;

		} catch (Exception e) {
			// TODO: handle exception

			LogWrite.getInstance().write(
					getTableName() + "->getCount() -> e = ", e.getMessage());

		} finally {
			if (pool != null) {
				pool.freeConnection(conn);
				pool = null;
			}
			conn = null;
			stmt = null;
		}
		return result;
	}

	// 删除数据
	protected boolean delete(String sql) {
		System.out.println(sql);

		Pool pool = null;
		Connection conn = null;
		Statement stmt = null;
		try {
			pool = Pool.getInstance();
			conn = pool.getConnection();
			stmt = conn.createStatement();
			return stmt.executeUpdate(sql) > 0;
		} catch (Exception e) {
			// TODO: handle exception
			LogWrite.getInstance().write(
					getTableName() + " -> delete() -> e = ", e.getMessage());
			return false;
		} finally {
			if (pool != null) {
				pool.freeConnection(conn);
				pool = null;
			}
			conn = null;
			stmt = null;
		}
	}

	public abstract String getTableName();

//	public abstract String[] getFields();
}
