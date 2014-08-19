package condigest.model;

import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
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
    @JoinColumn(name = "id_meeting", nullable = false)
    private Meetings userPresent;

    @Column
    @ElementCollection(targetClass = String.class)
    private List<String> userContacts;

    @Column
    @ElementCollection(targetClass = String.class)
    private List<String> userEmails;
    
    @Column(columnDefinition = "BIT", nullable = false)
    @Type(type = "org.hibernate.type.NumericBooleanType")
    private boolean typeOfUser;

    @Column(nullable = false)
    private GregorianCalendar birthday;
    
    @Column(nullable = false)
    private String name;
    
    @Column(nullable = false, length = 25)
    private String taxIdentificationNumber;
    
    @Column(nullable = false, length = 25)
    private String userName;
    
    @Column(nullable = false, length = 15)
    private String password;

    public User() {
        super();
    }

    public User(Set<Address> listOfAddress, Set<Fraction> listOfFractions,
            List<String> userContacts, List<String> userEmails, GregorianCalendar birthday, String name,
            String taxIdentificationNumber, boolean typeOfUser, String userName, String password) {
        super();
        this.listOfAddress = listOfAddress;
        this.listOfFractions = listOfFractions;
        this.userContacts = userContacts;
        this.userEmails = userEmails;
        this.birthday = birthday;
        this.name = name;
        this.taxIdentificationNumber = taxIdentificationNumber;
        this.typeOfUser = typeOfUser;
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

    public List<String> getUserContacts() {
        return userContacts;
    }

    public void setUserContacts(List<String> userContacts) {
        this.userContacts = userContacts;
    }

    public List<String> getUserEmails() {
        return userEmails;
    }

    public void setUserEmails(List<String> userEmails) {
        this.userEmails = userEmails;
    }

    public GregorianCalendar getBirthday() {
        return birthday;
    }

    public void setBirthday(GregorianCalendar birthday) {
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

}
