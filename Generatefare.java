package com.busticket;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Generatefare
 */
@WebServlet("/Generatefare")
public class Generatefare extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	public Generatefare() {
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
	
    List<Bookedseats> displaylist=new ArrayList<>();
    
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		if(request.getParameter("BookTickets")!=null) {
		String selectedbus = request.getParameter("selectedbus");
       
		HttpSession s1 = request.getSession();
		List<Buses> busesobj = (List<Buses>) s1.getAttribute("busobj");
		Set<String> busesnames = (Set<String>) s1.getAttribute("busnames");
		String tickettype = (String) s1.getAttribute("tickettype");
		int tickets = (int) s1.getAttribute("tickets");
		//PrintWriter out = response.getWriter();
		int fare = 0;

		if (busesnames.contains(selectedbus)) {
			for (Buses bus : busesobj) {
				if (selectedbus.equalsIgnoreCase(bus.getbusname())) {
					if (tickettype.equalsIgnoreCase("normal")) {
						ITicketGenerator ticketgenerator = new NormalTicket();
						ticketgenerator.deducttickets(tickets, bus);
						fare = ticketgenerator.getFare(tickets, bus);
						Bookedseats seatsconfirmation=new Bookedseats(selectedbus,tickettype,tickets,fare);
						displaylist.add(seatsconfirmation);
				
					} else if (tickettype.equalsIgnoreCase("delux")) {

						ITicketGenerator ticketgenerator = new DeluxTicket();
						ticketgenerator.deducttickets(tickets, bus);
						fare = ticketgenerator.getFare(tickets, bus);
						Bookedseats seatsconfirmation=new Bookedseats(selectedbus,tickettype,tickets,fare);
						displaylist.add(seatsconfirmation);
						
					}
				}
			}
			
			// s1.setAttribute("fare", fare);
			s1.setAttribute("displaylist", displaylist);
			s1.setAttribute("selectedbus", selectedbus);
			RequestDispatcher rd = request.getRequestDispatcher("Exit.jsp");
			rd.forward(request, response);

		}

		else {
			//out.println("Please select in the list of buses displayed");
			String message="Please select in the list of buses displayed";
			request.setAttribute("message", message);
			RequestDispatcher rd=request.getRequestDispatcher("Validationerror.jsp");
			rd.forward(request, response);;
		}
	}
	else if(request.getParameter("Backbutton")!=null) {
		response.sendRedirect("Homepage.jsp");
	}
	}
}
