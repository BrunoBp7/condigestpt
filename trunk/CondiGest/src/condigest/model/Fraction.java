package condigest.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Fraction {

    @Id
    @GeneratedValue
    private long id_fraction;

    @ManyToOne
    @JoinColumn(name = "id_user", nullable = false)
    private User fractionOwner;

    @OneToOne
    @JoinColumn(name = "id_user", nullable = true, insertable = false, updatable = false)
    private User whoPaysTheMonthlyAmount;

    @OneToOne
    @JoinColumn(name = "id_user", nullable = true, insertable = false, updatable = false)
    private User resident;

    @OneToOne
    @JoinColumn(name = "id_address", nullable = false)
    private Address registerAddress;

    @ManyToOne
    @JoinColumn(name = "id_building", nullable = false)
    private Building fractionOfBuilding;

    @OneToMany(mappedBy = "monthlyPaymentOfFraction")
    private Set<Payments> monthlyPaymentsBox = new HashSet<Payments>();

    @Column(nullable = false, length = 50)
    private String registerNumberOfFraction;
    
    @Column(nullable = false)
    private String description;
    
    @Column(nullable = false, length = 2)
    private int numberOfFloors;
    
    @Column(nullable = false, length = 2)
    private int typology;
    
    @Column(nullable = false, length = 5)
    private int perThousand;
    
    @Column(nullable = false, length = 50)
    private String insurancePolicy;
    
    @Column(nullable = false)
    private double theMonthlyChargesAmount;

    public Fraction() {
        super();
    }

    public Fraction(User fractionOwner, Address registerAddress,
            Building fractionOfBuilding, String registerNumberOfFraction,
            String description, int numberOfFloors, int typology,
            int perThousand, String insurancePolicy,
            double theMonthlyChargesAmount) {
        super();
        this.fractionOwner = fractionOwner;
        this.registerAddress = registerAddress;
        this.fractionOfBuilding = fractionOfBuilding;
        this.registerNumberOfFraction = registerNumberOfFraction;
        this.description = description;
        this.numberOfFloors = numberOfFloors;
        this.typology = typology;
        this.perThousand = perThousand;
        this.insurancePolicy = insurancePolicy;
        this.theMonthlyChargesAmount = theMonthlyChargesAmount;
    }

    public User getFractionOwner() {
        return fractionOwner;
    }

    public void setFractionOwner(User fractionOwner) {
        this.fractionOwner = fractionOwner;
    }

    public User getWhoPaysTheMonthlyAmount() {
        return whoPaysTheMonthlyAmount;
    }

    public void setWhoPaysTheMonthlyAmount(User whoPaysTheMonthlyAmount) {
        this.whoPaysTheMonthlyAmount = whoPaysTheMonthlyAmount;
    }

    public User getResident() {
        return resident;
    }

    public void setResident(User resident) {
        this.resident = resident;
    }

    public Address getRegisterAddress() {
        return registerAddress;
    }

    public void setRegisterAddress(Address registerAddress) {
        this.registerAddress = registerAddress;
    }

    public Building getFractionOfBuilding() {
        return fractionOfBuilding;
    }

    public void setFractionOfBuilding(Building fractionOfBuilding) {
        this.fractionOfBuilding = fractionOfBuilding;
    }

    public Set<Payments> getMonthlyPaymentsBox() {
        return monthlyPaymentsBox;
    }

    public void setMonthlyPaymentsBox(Set<Payments> monthlyPaymentsBox) {
        this.monthlyPaymentsBox = monthlyPaymentsBox;
    }

    public String getRegisterNumberOfFraction() {
        return registerNumberOfFraction;
    }

    public void setRegisterNumberOfFraction(String registerNumberOfFraction) {
        this.registerNumberOfFraction = registerNumberOfFraction;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getNumberOfFloors() {
        return numberOfFloors;
    }

    public void setNumberOfFloors(int numberOfFloors) {
        this.numberOfFloors = numberOfFloors;
    }

    public int getTypology() {
        return typology;
    }

    public void setTypology(int typology) {
        this.typology = typology;
    }

    public int getPerThousand() {
        return perThousand;
    }

    public void setPerThousand(int perThousand) {
        this.perThousand = perThousand;
    }

    public String getInsurancePolicy() {
        return insurancePolicy;
    }

    public void setInsurancePolicy(String insurancePolicy) {
        this.insurancePolicy = insurancePolicy;
    }

    public double getTheMonthlyChargesAmount() {
        return theMonthlyChargesAmount;
    }

    public void setTheMonthlyChargesAmount(double theMonthlyChargesAmount) {
        this.theMonthlyChargesAmount = theMonthlyChargesAmount;
    }

    public long getId_fraction() {
        return id_fraction;
    }
}
