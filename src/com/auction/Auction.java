package com.auction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/bid")
public class Auction extends HttpServlet{
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("itemid");
		String item_name=request.getParameter("itemname");
		String your_name=request.getParameter("yourname");
		String your_email=request.getParameter("email");
		String bid_amount=request.getParameter("bidamount");
		String autoinc=request.getParameter("autoinc");
		
		HttpSession session=request.getSession();
		session.setAttribute("itemid", id);
		session.setAttribute("itemname", item_name);
		session.setAttribute("yourname", your_name);
		session.setAttribute("email", your_email);
		session.setAttribute("bidamount", bid_amount);
		
		if(autoinc.equals("on"))	
			session.setAttribute("autoinc", "true");
		else
			session.setAttribute("autoinc", "false");
		
		response.sendRedirect("output.jsp");
		
		//request.getRequestDispatcher("output.jsp").forward(request, response);
	}

}
