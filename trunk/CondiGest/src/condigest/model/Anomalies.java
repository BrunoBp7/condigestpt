package condigest.model;

import java.util.GregorianCalendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Type;

@Entity
public class Anomalies {

    @Id @GeneratedValue
    private long id_anomalie;
    
    @ManyToOne
    @JoinColumn(name = "id_user")
    private User anomaliesUser;
    
    @OneToOne
    @JoinColumn(name = "id_typeOfAnomalie")
    private TypeOfAnomalie typeOfAnomalie;
    
    @Column(nullable = false)
    private GregorianCalendar dateAnomalie;

    @Column(nullable = false)
    private String descriptionOfAnomalie;
    
    @Column(columnDefinition = "BIT")
    @Type(type = "org.hibernate.type.NumericBooleanType")
    private boolean isReaded = false;
    
    public Anomalies() {
        super();
    }

    public Anomalies(User anomaliesUser, TypeOfAnomalie typeOfAnomalie,
            GregorianCalendar dateAnomalie, String descriptionOfAnomalie,
            boolean isReaded) {
        super();
        this.anomaliesUser = anomaliesUser;
        this.typeOfAnomalie = typeOfAnomalie;
        this.dateAnomalie = dateAnomalie;
        this.descriptionOfAnomalie = descriptionOfAnomalie;
        this.isReaded = isReaded;
    }

    public User getAnomaliesUser() {
        return anomaliesUser;
    }

    public void setAnomaliesUser(User anomaliesUser) {
        this.anomaliesUser = anomaliesUser;
    }

    public TypeOfAnomalie getTypeOfAnomalie() {
        return typeOfAnomalie;
    }

    public void setTypeOfAnomalie(TypeOfAnomalie typeOfAnomalie) {
        this.typeOfAnomalie = typeOfAnomalie;
    }

    public GregorianCalendar getDateAnomalie() {
        return dateAnomalie;
    }

    public void setDateAnomalie(GregorianCalendar dateAnomalie) {
        this.dateAnomalie = dateAnomalie;
    }

    public String getDescriptionOfAnomalie() {
        return descriptionOfAnomalie;
    }

    public void setDescriptionOfAnomalie(String descriptionOfAnomalie) {
        this.descriptionOfAnomalie = descriptionOfAnomalie;
    }

    public boolean isReaded() {
        return isReaded;
    }

    public void setReaded(boolean isReaded) {
        this.isReaded = isReaded;
    }

    public long getId_anomalie() {
        return id_anomalie;
    }
}
