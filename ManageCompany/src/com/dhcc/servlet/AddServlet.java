package com.dhcc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhcc.dao.Operation;
import com.dhcc.pojo.Application;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/index/add.do")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Operation op=new Operation();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		int id=Integer.parseInt(request.getParameter("id2"));
		String name=request.getParameter("name2");
		String webName=request.getParameter("webName2");
		int status=Integer.parseInt(request.getParameter("status2"));
		String adName=request.getParameter("adName2");
		Date applyDate=Date.valueOf(request.getParameter("applyDate2"));
		String detail=request.getParameter("detail2");
		Application app=new Application(id,name,webName,status,adName,applyDate,detail);
		try {
			op.save(app);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		PrintWriter out=response.getWriter();
		out.println("<script>alter('Ìí¼Ó³É¹¦');location.href=operator.do;</script>");
		response.sendRedirect("operator.do");
	}

}
