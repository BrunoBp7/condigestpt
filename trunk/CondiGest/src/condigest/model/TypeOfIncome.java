package condigest.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class TypeOfIncome {

    @Id
    @GeneratedValue
    private long id_typeOfIncome;
    
    @Column(nullable = false, length = 100)
    private String incomeTitle;

    public TypeOfIncome() {
        super();
    }

    public TypeOfIncome(String incomeTitle) {
        super();
        this.incomeTitle = incomeTitle;
    }

    public String getIncomeTitle() {
        return incomeTitle;
    }

    public void setIncomeTitle(String incomeTitle) {
        this.incomeTitle = incomeTitle;
    }

    public long getId_typeOfIncome() {
        return id_typeOfIncome;
    }

}
