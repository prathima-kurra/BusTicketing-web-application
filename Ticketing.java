package com.busticket;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
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
 * Servlet implementation class Ticketing
 */

enum Tickettype{
	Normal,Delux;
}
@WebServlet("/Ticketing")
public class Ticketing extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	Tickettype t;
//    public Ticketing() {
//        super();
//        // TODO Auto-generated constructor stub
//    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void ticketType(Tickettype t) {
		this.t=t;
	}

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
		// doGet(request, response);
		try {
			
			if (request.getParameter("busavailability") != null) {
				int tickets = Integer.parseInt(request.getParameter("tickets"));
				request.setAttribute("numberoftickets", tickets);
				String tickettype = request.getParameter("tickettype");
                ticketType(Tickettype.valueOf(tickettype));
				HttpSession session = request.getSession();
				List<Buses> busesaccordingtoroutes = (List<Buses>) session.getAttribute("busesaccordingtoroutes");
				List<Buses> busesaccordingtotickets = new ArrayList<>();
				Set<String> busnames = new HashSet<String>();

				switch(t) {
				case Normal:
					for (Buses bus : busesaccordingtoroutes) {
						String busname = bus.getbusname();
						if (bus.getnormaltickets() >= tickets) {
							busesaccordingtotickets.add(bus);
							busnames.add(busname);
						}
					}
					request.setAttribute("busobjbasedontickets", busesaccordingtotickets);
					request.setAttribute("busnames", busnames);
					request.setAttribute("tickets", tickets);
					request.setAttribute("tickettype", tickettype);

					RequestDispatcher rd = request.getRequestDispatcher("Validatebasedontickets.jsp");
					rd.forward(request, response);
                    break;
				
				
				case Delux:
					for (Buses bus : busesaccordingtoroutes) {
						String busname = bus.getbusname();
						if (bus.getnormaltickets() >= tickets) {
							busesaccordingtotickets.add(bus);
							busnames.add(busname);
						}
					}
					request.setAttribute("busobjbasedontickets", busesaccordingtotickets);
					request.setAttribute("busnames", busnames);
					request.setAttribute("tickets", tickets);
					request.setAttribute("tickettype", tickettype);

					RequestDispatcher rd1 = request.getRequestDispatcher("Validatebasedontickets.jsp");
					rd1.forward(request, response);
				    break;
			}
			}

			else if (request.getParameter("back") != null) {
				response.sendRedirect("Homepage.jsp");
			}

		} catch (NumberFormatException ex) {
			String message = "Please enter valid input";
			request.setAttribute("message", message);
			RequestDispatcher rd = request.getRequestDispatcher("Validationerror.jsp");
			rd.forward(request, response);
		}
	}
}
