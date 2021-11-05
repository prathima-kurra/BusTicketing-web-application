package com.busticket;

public interface ITicketGenerator {
	int getFare(int tickets, Buses obj);

	void deducttickets(int tickets, Buses obj);

}
