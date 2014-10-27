package condigest.model;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Type;

import condigest.model.Address;
import condigest.model.Anomalies;
import condigest.model.Meetings;

@Entity
public class User {

	@Id
	@GeneratedValue
	private long id_user;

	@OneToMany(mappedBy = "addressUser")
	private Set<Address> listOfAddress = new HashSet<Address>();

	@OneToMany(mappedBy = "fractionOwner")
	private Set<Fraction> listOfFractions = new HashSet<Fraction>();

	@OneToMany(mappedBy = "anomaliesUser")
	private Set<Anomalies> listOfAnomalie = new HashSet<Anomalies>();

	@ManyToOne
	@JoinColumn(name = "id_meeting", nullable = true)
	private Meetings userPresent;

	@Column(nullable = false)
	private String mobilePhone;

	@Column(nullable = true)
	private String phone;

	@Column(nullable = false)
	private String primaryEmail;

	@Column(nullable = true)
	private String alternativeEmail;

	@Column(columnDefinition = "BIT", nullable = false)
	@Type(type = "org.hibernate.type.NumericBooleanType")
	private boolean typeOfUser;

	@Column(nullable = false)
	private Date birthday;

	@Column(nullable = false)
	private String name;

	@Column(nullable = false, length = 25)
	private String taxIdentificationNumber;

	@Column(nullable = false, length = 25)
	private String userName;

	@Column(nullable = false, length = 50)
	private String password;

	@Column(nullable = true, length = 255)
	private String notes;

	@OneToMany(mappedBy = "messageSender")
	private Set<Message> listOfSentMessages = new HashSet<Message>();

	@OneToMany(mappedBy = "messageSender")
	private Set<Message> listOfReceivedMessages = new HashSet<Message>();

	public User() {
		super();
	}

	public User(String mobilePhone, String primaryEmail, boolean typeOfUser,
			Date birthday, String name, String taxIdentificationNumber,
			String userName, String password) {
		super();
		this.mobilePhone = mobilePhone;
		this.primaryEmail = primaryEmail;
		this.typeOfUser = typeOfUser;
		this.birthday = birthday;
		this.name = name;
		this.taxIdentificationNumber = taxIdentificationNumber;
		this.userName = userName;
		this.password = password;
	}

	public Set<Address> getListOfAddress() {
		return listOfAddress;
	}

	public void setListOfAddress(Set<Address> listOfAddress) {
		this.listOfAddress = listOfAddress;
	}

	public Set<Fraction> getListOfFractions() {
		return listOfFractions;
	}

	public void setListOfFractions(Set<Fraction> listOfFractions) {
		this.listOfFractions = listOfFractions;
	}

	public Set<Anomalies> getListOfAnomalie() {
		return listOfAnomalie;
	}

	public void setListOfAnomalie(Set<Anomalies> listOfAnomalie) {
		this.listOfAnomalie = listOfAnomalie;
	}

	public Meetings getUserPresent() {
		return userPresent;
	}

	public void setUserPresent(Meetings userPresent) {
		this.userPresent = userPresent;
	}

	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPrimaryEmail() {
		return primaryEmail;
	}

	public void setPrimaryEmail(String primaryEmail) {
		this.primaryEmail = primaryEmail;
	}

	public String getAlternativeEmail() {
		return alternativeEmail;
	}

	public void setAlternativeEmail(String alternativeEmail) {
		this.alternativeEmail = alternativeEmail;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTaxIdentificationNumber() {
		return taxIdentificationNumber;
	}

	public void setTaxIdentificationNumber(String taxIdentificationNumber) {
		this.taxIdentificationNumber = taxIdentificationNumber;
	}

	public boolean isTypeOfUser() {
		return typeOfUser;
	}

	public void setTypeOfUser(boolean typeOfUser) {
		this.typeOfUser = typeOfUser;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public long getId_user() {
		return id_user;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public Set<Message> getListOfSentMessages() {
		return listOfSentMessages;
	}

	public void setListOfMessages(Message sentMessage) {
		listOfSentMessages.add(sentMessage);
	}

	public Set<Message> getListOfReceivedMessages() {
		return listOfReceivedMessages;
	}

	public void setListOfReceivedMessages(Message receivedMessage) {
		listOfReceivedMessages.add(receivedMessage);
	}

}
