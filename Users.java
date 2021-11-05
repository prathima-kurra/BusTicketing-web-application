package com.busticket;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Users
 */
@WebServlet("/Users")
public class Users extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		if (request.getParameter("Continue") != null) {
			response.sendRedirect("Homepage.jsp");
		}

		/*else if(request.getParameter("Printtickets")!=null) {
			HttpSession s=request.getSession();
			List<Bookedseats> displaylist=(List<Bookedseats>)s.getAttribute("displaylist");
			request.setAttribute("displaylist", displaylist);
			RequestDispatcher rd=request.getRequestDispatcher("Printtickets.jsp");
			rd.forward(request, response);
		}*/
		else if(request.getParameter("Printtickets")!=null) {
			RequestDispatcher rd=request.getRequestDispatcher("Exit.jsp");
			rd.forward(request, response);
		}
		else if(request.getParameter("Logout")!=null) {
			
			HttpSession sobj=request.getSession();
			//List<Integer> totalfare=(List<Integer>)sobj.getAttribute("totalfare");
			List<Bookedseats> displaylist=(List<Bookedseats>)sobj.getAttribute("displaylist");
			int finalfare=0;
			for(Bookedseats seatsconfirm:displaylist)
				finalfare=finalfare+seatsconfirm.getFare();
			String finalfares=String.valueOf(finalfare);
			request.setAttribute("finalfares",finalfares);
			
			RequestDispatcher rd = request.getRequestDispatcher("Logout.jsp");
			rd.forward(request, response);
			displaylist.clear();
		}
	}

}
