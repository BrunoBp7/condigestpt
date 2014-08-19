package condigest.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Building {

    @Id
    @GeneratedValue
    private long id_building;
    
    @OneToMany(mappedBy = "fractionOfBuilding")
    private Set<Fraction> listOfFractions = new HashSet<Fraction>();
    
    @OneToOne
    @JoinColumn(name = "id_address", nullable = false)
    private Address buildingAddress;
    
    @Column(nullable = false)
    private String buildingDescription;
    
    @Column(nullable = false, length = 25)
    private String registerNumberOfBuilding;
    
    public Building() {
        super();
    }

    public Building(Set<Fraction> listOfFractions, Address buildingAddress,
            String buildingDescription, String registerNumberOfBuilding) {
        super();
        this.listOfFractions = listOfFractions;
        this.buildingAddress = buildingAddress;
        this.buildingDescription = buildingDescription;
        this.registerNumberOfBuilding = registerNumberOfBuilding;
    }

    public Set<Fraction> getListOfFractions() {
        return listOfFractions;
    }

    public void setListOfFractions(Set<Fraction> listOfFractions) {
        this.listOfFractions = listOfFractions;
    }

    public Address getBuildingAddress() {
        return buildingAddress;
    }

    public void setBuildingAddress(Address buildingAddress) {
        this.buildingAddress = buildingAddress;
    }

    public String getBuildingDescription() {
        return buildingDescription;
    }

    public void setBuildingDescription(String buildingDescription) {
        this.buildingDescription = buildingDescription;
    }

    public String getRegisterNumberOfBuilding() {
        return registerNumberOfBuilding;
    }

    public void setRegisterNumberOfBuilding(String registerNumberOfBuilding) {
        this.registerNumberOfBuilding = registerNumberOfBuilding;
    }

    public long getId_building() {
        return id_building;
    }
}
