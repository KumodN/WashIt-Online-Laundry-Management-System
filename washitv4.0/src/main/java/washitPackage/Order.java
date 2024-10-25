package washitPackage;

public class Order {
	private int id;
	private String name;
	private String phone;
	private String address;
	private String item;
	private String quantity;
	
	public Order(int id, String name, String phone, String address, String item, String quantity) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.item = item;
		this.quantity = quantity;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
	
}
