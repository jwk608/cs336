package cs336;

public class Item {
	private String VIN;
	private String Make;
	private String Model;
	
	public Item(String vin, String make, String model) 
	{
		super();
		VIN = vin;
		Make = make;
		Model = model;
	}


	public Item(){
		
	}

	public String getVIN() {
		return VIN;
	}
	public void setVIN(String vin) {
		VIN = vin;
	}
	public String getMake() {
		return Make;
	}

	public void setMake(String make) {
		Make = make;
	}
	public String getModel() {
		return Model;
	}

	public void setModel(String model) {
		Model = model;
	}
}
