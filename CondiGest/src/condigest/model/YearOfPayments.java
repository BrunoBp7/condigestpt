package condigest.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class YearOfPayments {

    @Id
    @GeneratedValue
    private long id_yearOfPayments;

    @OneToMany(mappedBy = "correspondingYearOfPayment")
    private Set<Payments> paymentsBoxForYear = new HashSet<Payments>();

    @Column(nullable = false, length = 4)
    private int yearOfPayments;

    public YearOfPayments() {
        super();
    }

    public YearOfPayments(int yearOfPayments) {
        super();
        this.yearOfPayments = yearOfPayments;
    }

    public Set<Payments> getPaymentsBoxForYear() {
        return paymentsBoxForYear;
    }

    public void setPaymentsBoxForYear(Set<Payments> paymentsBoxForYear) {
        this.paymentsBoxForYear = paymentsBoxForYear;
    }

    public int getYearOfPayments() {
        return yearOfPayments;
    }

    public void setYearOfPayments(int yearOfPayments) {
        this.yearOfPayments = yearOfPayments;
    }

    public long getId_yearOfPayments() {
        return id_yearOfPayments;
    }

}
