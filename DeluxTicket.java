package com.busticket;

public class DeluxTicket implements ITicketGenerator {

	@Override
	public int getFare(int tickets, Buses obj) {
		// TODO Auto-generated method stub
		return obj.getdeluxticketcost() * tickets;
	}

	@Override
	public void deducttickets(int tickets, Buses obj) {
		// TODO Auto-generated method stub
		obj.setdeluxtickets(obj.getdeluxtickets() - tickets);
	}

}
