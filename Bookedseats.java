package com.busticket;

public class Bookedseats {
public String selectedbus;
public String tickettype;
public int tickets;
public int fare;

public String getSelectedbus() {
	return selectedbus;
}


public String getTickettype() {
	return tickettype;
}


public int getTickets() {
	return tickets;
}


public int getFare() {
	return fare;
}


public Bookedseats(String selectedbus, String tickettype, int tickets, int fare) {
	super();
	this.selectedbus = selectedbus;
	this.tickettype = tickettype;
	this.tickets = tickets;
	this.fare = fare;
}
}
