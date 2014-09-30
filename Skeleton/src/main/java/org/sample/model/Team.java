package org.sample.model;

import java.util.ArrayList;

public class Team {

	private String name;
	private ArrayList<User> members;

	public Team(String _name) {
		members = new ArrayList<User>();
		name = _name;
	}
	
	public void addMemeber(User newMember){
		assert (!members.contains(newMember));
		members.add(newMember);		
	}

}
