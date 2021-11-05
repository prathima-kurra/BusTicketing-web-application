package com.busticket;

public class Buses {
	String busname;
	String route;
	int normaltickets;
	int deluxtickets;
	int normalticketcost;
	int deluxticketcost;

	public Buses(String busname, String route, int normaltickets, int deluxtickets, int normalticketcost,
			int deluxeticketcost) {
		this.busname = busname;
		this.route = route;
		this.normaltickets = normaltickets;
		this.deluxtickets = deluxtickets;
		this.normalticketcost = normalticketcost;
		this.deluxticketcost = deluxeticketcost;
	}

	public void setnormaltickets(int normaltickets) {
		this.normaltickets = normaltickets;
	}

	public void setdeluxtickets(int deluxtickets) {
		this.deluxtickets = deluxtickets;
	}

	public String getbusname() {
		return busname;
	}

	public String getroute() {
		return route;
	}

	public int getnormaltickets() {
		return normaltickets;
	}

	public int getdeluxtickets() {
		return deluxtickets;
	}

	public int getnormalticketcost() {
		return normalticketcost;
	}

	public int getdeluxticketcost() {
		return deluxticketcost;
	}

}
