package com.busticket;

import java.util.ArrayList;
import java.util.List;

public class Buseslist {
	ArrayList<Buses> buseslist = new ArrayList<>();
	
	
	public void createbuseslist() {
	
    
	Buses b1 = new Buses("B1", "ACE", 10, 10, 25, 50);
	Buses b2 = new Buses("B2", "BDA", 15, 5, 35, 70);
	Buses b3 = new Buses("B3", "CBE", 8, 7, 10, 25);
	Buses b4 = new Buses("B4", "ABCD", 8, 10, 70, 150);
	Buses b5 = new Buses("B5", "EDCBA", 12, 10, 50, 100);
	Buses b6 = new Buses("B6", "DABE", 4, 8, 100, 200);

	buseslist.add(b1);
	buseslist.add(b2);
	buseslist.add(b3);
	buseslist.add(b4);
	buseslist.add(b5);
	buseslist.add(b6);
}


public List<Buses> getBuseslist(){
	return buseslist;
}
}