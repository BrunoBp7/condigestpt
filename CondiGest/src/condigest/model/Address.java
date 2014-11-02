package condigest.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Address {

	@Id
	@GeneratedValue
	private long id_address;

	@ManyToOne
	@JoinColumn(name = "id_company", nullable = true)
	private Company addressCompany;

	@ManyToOne
	@JoinColumn(name = "id_user", nullable = true)
	private User addressUser;

	@Column(nullable = false, length = 100)
	private String street;

	@Column(nullable = false, length = 20)
	private String city;

	@Column(nullable = false, length = 20)
	private String state;

	@Column(nullable = false, length = 15)
	private String postalCode;

	@Column(nullable = false, length = 15)
	private String country;

	public Address() {
		super();
	}

	public Address(User addressUser, String street, String city, String state,
			String postalCode, String country) {
		super();
		this.addressUser = addressUser;
		this.street = street;
		this.city = city;
		this.state = state;
		this.postalCode = postalCode;
		this.country = country;
	}

	public Address(Company addressCompany, String street, String city,
			String state, String postalCode, String country) {
		super();
		this.addressCompany = addressCompany;
		this.street = street;
		this.city = city;
		this.state = state;
		this.postalCode = postalCode;
		this.country = country;
	}

	public Company getAddressCompany() {
		return addressCompany;
	}

	public void setAddressCompany(Company addressCompany) {
		this.addressCompany = addressCompany;
	}

	public User getAddressUser() {
		return addressUser;
	}

	public void setAddressUser(User addressUser) {
		this.addressUser = addressUser;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public long getId_address() {
		return id_address;
	}
}
