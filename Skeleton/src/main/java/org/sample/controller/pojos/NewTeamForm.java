package org.sample.controller.pojos;

import java.util.Calendar;

public class NewTeamForm {

	private String teamName;
	private java.util.Date teamDate;

	public NewTeamForm() {
		teamDate = Calendar.getInstance().getTime();
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public java.util.Date getTeamDate() {
		return teamDate;
	}

	public void setTeamDate(java.util.Date teamDate) {
		this.teamDate = teamDate;
	}
	
}
