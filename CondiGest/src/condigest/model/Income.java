package condigest.model;

import java.util.GregorianCalendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import condigest.model.Company;

@Entity
public class Income {

    @Id
    @GeneratedValue
    private long id_income;

    @ManyToOne
    @JoinColumn(name = "id_company", nullable = false)
    private Company incomesCompanys;

    @OneToOne
    @JoinColumn(name = "id_typeOfIncome", nullable = false)
    private TypeOfIncome thisTypeOfIncome;

    @Column(nullable = false)
    private GregorianCalendar incomeDate;
    
    @Column(nullable = false)
    private double amountValue;

    public Income() {
        super();
    }

    public Income(Company incomesCompanys, TypeOfIncome thisTypeOfIncome,
            GregorianCalendar incomeDate, double amountValue) {
        super();
        this.incomesCompanys = incomesCompanys;
        this.thisTypeOfIncome = thisTypeOfIncome;
        this.incomeDate = incomeDate;
        this.amountValue = amountValue;
    }

    public Company getIncomesCompanys() {
        return incomesCompanys;
    }

    public void setIncomesCompanys(Company incomesCompanys) {
        this.incomesCompanys = incomesCompanys;
    }

    public TypeOfIncome getThisTypeOfIncome() {
        return thisTypeOfIncome;
    }

    public void setThisTypeOfIncome(TypeOfIncome thisTypeOfIncome) {
        this.thisTypeOfIncome = thisTypeOfIncome;
    }

    public GregorianCalendar getIncomeDate() {
        return incomeDate;
    }

    public void setIncomeDate(GregorianCalendar incomeDate) {
        this.incomeDate = incomeDate;
    }

    public double getAmountValue() {
        return amountValue;
    }

    public void setAmountValue(double amountValue) {
        this.amountValue = amountValue;
    }

    public long getId_income() {
        return id_income;
    }

}
