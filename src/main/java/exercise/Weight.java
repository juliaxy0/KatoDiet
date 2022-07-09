package exercise;

public class Weight {

	String dateday;
	String weight;
	String height;
	double bmi;
	String status;
	String userid;

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getDateday() {
		return dateday;
	}

	public void setDateday(String dateday) {
		this.dateday = dateday;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String w) {
		this.weight = w;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String string) {
		this.height = string;
	}

	public double getBmi() {

		return bmi;
	}

	public void setBmi(double string) {
		this.bmi = string;
	}

	public String getStatus() {
		return status;

	}

	public void setStatus(double bmi) {
		if(bmi > 30) {
			status = "Obesity";
		} else if (bmi >= 25.0 && bmi <= 29.9 ) {
			status = "Overweight";
		} else if(bmi >= 18.5 && bmi <= 24.9) {
			status = "Normal";
		} else {
			status = "Underweight";
		}
	}

}