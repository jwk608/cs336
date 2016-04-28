package cs336;

public class Auction {
	private int auctionID;
	private String VIN;
	private String sellerName;
	private double minPrice;
	private double highestBid;
	
	public Auction(int auctionid, String vin, String sellername, double minprice, double highestbid) 
	{
		super();
		auctionID = auctionid;
		VIN = vin;
		sellerName = sellername;
		minPrice = minprice;
		highestBid = highestbid;
	}


	public Auction(){
		
	}

	public int getAuctionID() {
		return auctionID;
	}

	public void setAuctionID(int auctionid) {
		auctionID = auctionid;
	}

	public String getVIN() {
		return VIN;
	}

	public void setVIN(String vin) {
		VIN = vin;
	}
	public String getSellerName() {
		return sellerName;
	}

	public void setSellerName(String sellername) {
		sellerName = sellername;
	}
	public double getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(double minprice) {
		minPrice = minprice;
	}
	public double getHighestBid() {
		return highestBid;
	}

	public void setHighestBid(double highestbid) {
		highestBid = highestbid;
	}
}
