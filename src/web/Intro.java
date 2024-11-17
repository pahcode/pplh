package web;

public class Intro {
	
	private String team;
	private String substance;
	
	
	public Intro(String team, String substance) {
		super();
		this.team = team;
		this.substance = substance;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public String getSubstance() {
		return substance;
	}

	public void setSubstance(String substance) {
		this.substance = substance;
	}
	
}
