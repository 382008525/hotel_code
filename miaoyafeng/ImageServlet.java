package com.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

public class ImageServlet extends HttpServlet
{
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException
	{
		String type = req.getParameter("type");

		if (type.endsWith("addImage"))
		{
			addImage(req, res);
		}
	}

	public void addImage(ServletRequest req, ServletResponse res)
			throws ServletException, IOException
	{
		Blob b = null;
		String image_file = req.getParameter("image");
		System.out.println(image_file);
		File file = new File(image_file);
		FileOutputStream fos = new FileOutputStream(file);
	}

}
