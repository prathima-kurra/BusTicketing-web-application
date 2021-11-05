package com.busticket;

public class NormalTicket implements ITicketGenerator {

	@Override
	public int getFare(int tickets, Buses obj) {
		// TODO Auto-generated method stub
		return obj.getnormalticketcost() * tickets;
	}

	@Override
	public void deducttickets(int tickets, Buses obj) {
		// TODO Auto-generated method stub
		obj.setnormaltickets(obj.getnormaltickets() - tickets);
	}


}
