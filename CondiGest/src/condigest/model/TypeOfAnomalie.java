package condigest.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class TypeOfAnomalie {

    @Id
    @GeneratedValue
    private long id_typeOfAnomalie;
    
    @Column(nullable = false, length = 100)
    private String anomalieTitle;

    public TypeOfAnomalie() {
        super();
    }

    public TypeOfAnomalie(String anomalieTitle) {
        super();
        this.anomalieTitle = anomalieTitle;
    }

    public String getAnomalieTitle() {
        return anomalieTitle;
    }

    public void setAnomalieTitle(String anomalieTitle) {
        this.anomalieTitle = anomalieTitle;
    }

    public long getId_typeOfAnomalie() {
        return id_typeOfAnomalie;
    }

}
