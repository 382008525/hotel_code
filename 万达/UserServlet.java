package com.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DBHelper;
import com.model.User;

public class UserServlet extends HttpServlet
{
	public void service(ServletRequest request, ServletResponse response)
			throws ServletException, IOException
	{
		String type = request.getParameter("type");
		System.out.println(type);
		if (type.endsWith("userRegister"))
		{
			register(request,response);
		}
		else if(type.endsWith("userLogin"))
 		{
			login(request,response);
		}
		else if(type.endsWith("passwordUpdate"))
		{
			passwordUpdate(request,response);
		}
	}

	public User getSpecial(int condition)
	{
		List<User> list = DBHelper.getInstance().getUser().getData(
				"selet from house_trade where USER_NO =" + condition);
		return list.get(0);
	}

	public void login(ServletRequest request, ServletResponse response)
	throws ServletException, IOException
	{
		User user = null;
		String loginname = request.getParameter("loginname");
		String password = request.getParameter("password");
		try
		{
			String sql = "select * from user where loginname = '" + loginname + "'";
				user =  DBHelper.getInstance().getUser().getData(sql).get(0);
			if (password.equals(DBHelper.getInstance().getUser().getData(sql)
					.get(0).getPassword()))
			{
				HttpServletRequest req = (HttpServletRequest) request;
				HttpSession session = req.getSession();
				session.setAttribute("user",user);
				HttpServletResponse resp = (HttpServletResponse) response;
				resp.sendRedirect("usercenter.jsp");
				return;
			}
		} catch (Exception e)
		{
			e.printStackTrace();
			System.out.println("用户不存在");
			HttpServletResponse resp = (HttpServletResponse) response;
			resp.sendRedirect("login_error.jsp");
			return;
		}
		HttpServletResponse resp = (HttpServletResponse) response;
		resp.sendRedirect("login_error.jsp");
		return;
	}
	public boolean register(ServletRequest request, ServletResponse response)
			throws ServletException, IOException
	{
		User user = new User();
		String loginname = request.getParameter("loginname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String repassword = request.getParameter("repassword");
		String address = request.getParameter("address");
		int age = Integer.parseInt(request.getParameter("age"));
		String telephone = request.getParameter("telephone");
		String ID = request.getParameter("ID");

		user.setLoginname(loginname);
		user.setUsername(username);
		user.setGender(gender);
		user.setPassword(password);
		user.setRepassword(repassword);
		user.setID(ID);
		user.setAddress(address);
		user.setAge(age);
		user.setTelephone(telephone);

		boolean result = DBHelper.getInstance().getUser().addUser(user);

		
		if (false == result)
		{
			System.out.println("插入用户失败！");
			HttpServletResponse resp = (HttpServletResponse) response;
			resp.sendRedirect("register_error.jsp");
			return result;
		}

		request.getRequestDispatcher("login.jsp").forward(request,response);
		
		return result;
	}
	
	public void passwordUpdate(ServletRequest request, ServletResponse response)
	throws ServletException, IOException
	{
		HttpServletRequest req = (HttpServletRequest) request;
		String password = req.getParameter("password");
		String repassword = req.getParameter("repassword");
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		user.setPassword(password);
		DBHelper.getInstance().getUser().updateUser(user);
		HttpServletResponse resp = (HttpServletResponse) response;
		resp.sendRedirect("userinfo.jsp");
		return;
	}
}
