package condigest.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
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
    private String primaryContact;

    @Column(nullable = false)
    private String alternativeContact;

    @Column(nullable = false)
    private String primaryEmail;

    @Column(nullable = false)
    private String alternativeEmail;

    @Column(nullable = false, length = 100)
    private String companyName;

    @Column(nullable = false, length = 25)
    private String companyIdentificationNumber;

    public Company() {
        super();
    }

    public Company(Set<Address> listOfAddress, String primaryContact,
            String alternativeContact, String primaryEmail,
            String alternativeEmail, String companyName,
            String companyIdentificationNumber) {
        super();
        this.listOfAddress = listOfAddress;
        this.primaryContact = primaryContact;
        this.alternativeContact = alternativeContact;
        this.primaryEmail = primaryEmail;
        this.alternativeEmail = alternativeEmail;
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

    public String getPrimaryContact() {
        return primaryContact;
    }

    public void setPrimaryContact(String primaryContact) {
        this.primaryContact = primaryContact;
    }

    public String getAlternativeContact() {
        return alternativeContact;
    }

    public void setAlternativeContact(String alternativeContact) {
        this.alternativeContact = alternativeContact;
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
