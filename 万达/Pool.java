package com.db;

/*
 我的数据库连接池

 ***********模块说明**************

 getInstance()返回POOL唯一实例,第一次调用时将执行构造函数
 构造函数Pool()调用驱动装载loadDrivers()函数;连接池创建createPool()函数
 loadDrivers()装载驱动
 createPool()建连接池
 getConnection()返回一个连接实例
 getConnection(long time)添加时间限制
 freeConnection(Connection con)将con连接实例返回到连接池
 getnum()返回空闲连接数
 getnumActive()返回当前使用的连接数

 */

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Pool {

	static private Pool instance = null; // 定义唯一实例

	private int maxConnect = 100;// 最大连接数
	private int normalConnect = 1;// 保持连接数
	private String password = "";// 密码
	private String url = "";// 连接URL
	private String user = "";// 用户名
	private String driverName = "";// 驱动类

	Driver driver = null;// 驱动变量
	DBConnectionPool pool = null;// 连接池实例变量

	// public static void main(String[] args) {
	// Pool.getInstance();
	//
	// }
	// 返回唯一实例

	static synchronized public Pool getInstance() {
		if (instance == null) {
			instance = new Pool("house_trade","root","pxm520","3306","localhost","mysql");
		}
		return instance;
	}

	// 将构造函数私有,不允许外界访问
	private Pool(String dbName, String userName, String passWord, String port, String urll, String dbtype) {
		user = userName;
		password = passWord;
		if (dbtype.equalsIgnoreCase("sqlserver")) {// sqlserver
			url = "jdbc:microsoft:sqlserver://" + urll + ":" + port + ";DatabaseName=" + dbName + "";
			driverName = "com.microsoft.jdbc.sqlserver.SQLServerDriver";
			loadDrivers(driverName);
			createPool();
		} else if (dbtype.equalsIgnoreCase("oracle")) {// oracle
			url = "jdbc:oracle:thin:@" + urll + ":" + port + ":" + dbName;
			driverName = "oracle.jdbc.xa.client.OracleXADataSource";
			loadDrivers(driverName);
			createPool();
		} else if (dbtype.equalsIgnoreCase("mysql")) {// mysql
//			url = "jdbc:mysql://" + urll + ":" + port + "/" + dbName + "?characterEncoding=";
			url = "jdbc:mysql://localhost:3306/house_trade?useUnicode=true&amp;amp;amp;amp;amp;amp;characterEncoding=utf-8";
			driverName = "com.mysql.jdbc.Driver";
			loadDrivers(driverName);
			createPool();
		}
	}

	// 装载和注册所有JDBC驱动程序
	private void loadDrivers(String dri) {

		String driverClassName = dri;
		try {
			 driver = (Driver) Class.forName(driverClassName).newInstance();
			 DriverManager.registerDriver(driver);
			 System.out.println("成功注册JDBC驱动程序" + driverClassName);
		} catch (Exception e) {
			 System.out.println("无法注册JDBC驱动程序:" + driverClassName + ",错误:" +
			 e);
		}
	}

	// 创建连接池
	private void createPool() {
		pool = new DBConnectionPool(password, url, user, normalConnect, maxConnect);
		if (pool != null) {
			 System.out.println("创建连接池成功");
		} else {
			 System.out.println("创建连接池失败");
		}
	}

	// 获得一个可用的连接,如果没有则创建一个连接,且小于最大连接限制
	public Connection getConnection() {
		if (pool != null) {
			return pool.getConnection();
		}
		return null;
	}

	// 获得一个连接,有时间限制
	public Connection getConnection(long time) {
		if (pool != null) {
			return pool.getConnection(time);
		}
		return null;
	}

	// 将连接对象返回给连接池
	public void freeConnection(Connection con) {
		if (pool != null) {
			pool.freeConnection(con);
		}
	}

	// 返回当前空闲连接数
	public int getnum() {
		return pool.getnum();
	}

	// 返回当前连接数
	public int getnumActive() {
		return pool.getnumActive();
	}

	// 关闭所有连接,撤销驱动注册
	public synchronized void release() {

		// /关闭连接
		pool.release();

		// /撤销驱动
		try {
			DriverManager.deregisterDriver(driver);
			// System.out.println("撤销JDBC驱动程序 " + driver.getClass().getName());
		} catch (SQLException e) {
			// System.out.println("无法撤销JDBC驱动程序的注册:" +
			// driver.getClass().getName());
		}

	}

}
