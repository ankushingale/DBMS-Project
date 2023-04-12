package com.model;

public class partymodel {

	private String party_id;
	private String party_name;
	private String party_leader;
	private String party_type;
	public partymodel(String party_id, String party_name, String party_leader, String party_type) {
		super();
		this.party_id = party_id;
		this.party_name = party_name;
		this.party_leader = party_leader;
		this.party_type = party_type;
	}
	public String getParty_id() {
		return party_id;
	}
	public void setParty_id(String party_id) {
		this.party_id = party_id;
	}
	public String getParty_name() {
		return party_name;
	}
	public void setParty_name(String party_name) {
		this.party_name = party_name;
	}
	public String getParty_leader() {
		return party_leader;
	}
	public void setParty_leader(String party_leader) {
		this.party_leader = party_leader;
	}
	public String getParty_type() {
		return party_type;
	}
	public void setParty_type(String party_type) {
		this.party_type = party_type;
	}
	
	
}
