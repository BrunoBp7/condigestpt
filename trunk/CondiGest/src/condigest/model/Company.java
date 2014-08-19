package condigest.model;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Company {

    @Id
    @GeneratedValue
    private long id_company;

    @OneToMany(mappedBy = "addressCompany")
    private Set<Address> listOfAddress = new HashSet<Address>();

    @OneToMany(mappedBy = "incomesCompanys")
    private Set<Income> listOfIncomes = new HashSet<Income>();

    @OneToMany(mappedBy = "invoicesCompanys")
    private Set<Invoice> listOfInvoices = new HashSet<Invoice>();

    @Column(nullable = false)
    @ElementCollection(targetClass = String.class)
    private List<String> companyContacts;

    @Column(nullable = false)
    @ElementCollection(targetClass = String.class)
    private List<String> companyEmails;

    @Column(nullable = false, length = 100)
    private String companyName;
    
    @Column(nullable = false, length = 25)
    private String companyIdentificationNumber;

    public Company() {
        super();
    }

    public Company(Set<Address> listOfAddress, List<String> companyContacts,
            List<String> companyEmails, String companyName,
            String companyIdentificationNumber) {
        super();
        this.listOfAddress = listOfAddress;
        this.companyContacts = companyContacts;
        this.companyEmails = companyEmails;
        this.companyName = companyName;
        this.companyIdentificationNumber = companyIdentificationNumber;
    }

    public Set<Address> getListOfAddress() {
        return listOfAddress;
    }

    public void setListOfAddress(Set<Address> listOfAddress) {
        this.listOfAddress = listOfAddress;
    }

    public Set<Income> getListOfIncomes() {
        return listOfIncomes;
    }

    public void setListOfIncomes(Set<Income> listOfIncomes) {
        this.listOfIncomes = listOfIncomes;
    }

    public Set<Invoice> getListOfInvoices() {
        return listOfInvoices;
    }

    public void setListOfInvoices(Set<Invoice> listOfInvoices) {
        this.listOfInvoices = listOfInvoices;
    }

    public List<String> getCompanyContacts() {
        return companyContacts;
    }

    public void setCompanyContacts(List<String> companyContacts) {
        this.companyContacts = companyContacts;
    }

    public List<String> getCompanyEmails() {
        return companyEmails;
    }

    public void setCompanyEmails(List<String> companyEmails) {
        this.companyEmails = companyEmails;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyIdentificationNumber() {
        return companyIdentificationNumber;
    }

    public void setCompanyIdentificationNumber(
            String companyIdentificationNumber) {
        this.companyIdentificationNumber = companyIdentificationNumber;
    }

    public long getId_company() {
        return id_company;
    }

}
