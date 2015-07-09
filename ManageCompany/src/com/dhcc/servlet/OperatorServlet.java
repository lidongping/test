package com.dhcc.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhcc.dao.Operation;
import com.dhcc.pojo.Application;

/**
 * Servlet implementation class OperatorServlet
 */
@WebServlet("/index/operator.do")
public class OperatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Operation op=new Operation();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OperatorServlet() {
        super();
       
    }

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
			
			String id[]=request.getParameterValues("setlist");
			if(id!=null){
			for (int i = 0; i < id.length; i++) {
				try {
					op.delete(Integer.parseInt(id[i]));
				} catch (NumberFormatException e) {
					e.printStackTrace();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
			
			ServletContext application=this.getServletContext();
			ArrayList<Application> list=(ArrayList<Application>) op.getAll();
			application.setAttribute("all", list);
			response.sendRedirect("YHChannelApply.jsp");
	}

}
