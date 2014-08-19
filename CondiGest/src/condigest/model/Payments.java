package condigest.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Payments {

    @Id
    @GeneratedValue
    private long id_payment;

    @ManyToOne
    @JoinColumn(name = "id_fraction", nullable = false)
    private Fraction monthlyPaymentOfFraction;

    @ManyToOne
    @JoinColumn(name = "id_yearOfPayments", nullable = false)
    private YearOfPayments correspondingYearOfPayment;

    @Column(nullable = false)
    private double amountPaid;

    public Payments() {
        super();
    }

    public Payments(Fraction monthlyPaymentOfFraction,
            YearOfPayments correspondingYearOfPayment, double amountPaid) {
        super();
        this.monthlyPaymentOfFraction = monthlyPaymentOfFraction;
        this.correspondingYearOfPayment = correspondingYearOfPayment;
        this.amountPaid = amountPaid;
    }

    public Fraction getMonthlyPaymentOfFraction() {
        return monthlyPaymentOfFraction;
    }

    public void setMonthlyPaymentOfFraction(Fraction monthlyPaymentOfFraction) {
        this.monthlyPaymentOfFraction = monthlyPaymentOfFraction;
    }

    public YearOfPayments getCorrespondingYearOfPayment() {
        return correspondingYearOfPayment;
    }

    public void setCorrespondingYearOfPayment(
            YearOfPayments correspondingYearOfPayment) {
        this.correspondingYearOfPayment = correspondingYearOfPayment;
    }

    public double getAmountPaid() {
        return amountPaid;
    }

    public void setAmountPaid(double amountPaid) {
        this.amountPaid = amountPaid;
    }

    public long getId_payment() {
        return id_payment;
    }

}
