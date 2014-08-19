package condigest.model;

import java.util.GregorianCalendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Invoice {

    @Id
    @GeneratedValue
    private long id_invoice;

    @ManyToOne
    @JoinColumn(name = "id_company", nullable = false)
    private Company invoicesCompanys;

    @OneToOne
    @JoinColumn(name = "id_typeOfInvoice", nullable = false)
    private TypeOfInvoice thisTypeOfInvoice;

    @Column(nullable = false)
    private GregorianCalendar invoiceDate;
    
    @Column(nullable = false)
    private double invoiceAmount;

    public Invoice() {
        super();
    }

    public Invoice(Company invoicesCompanys, TypeOfInvoice thisTypeOfInvoice,
            GregorianCalendar invoiceDate, double invoiceAmount) {
        super();
        this.invoicesCompanys = invoicesCompanys;
        this.thisTypeOfInvoice = thisTypeOfInvoice;
        this.invoiceDate = invoiceDate;
        this.invoiceAmount = invoiceAmount;
    }

    public Company getInvoicesCompanys() {
        return invoicesCompanys;
    }

    public void setInvoicesCompanys(Company invoicesCompanys) {
        this.invoicesCompanys = invoicesCompanys;
    }

    public TypeOfInvoice getThisTypeOfInvoice() {
        return thisTypeOfInvoice;
    }

    public void setThisTypeOfInvoice(TypeOfInvoice thisTypeOfInvoice) {
        this.thisTypeOfInvoice = thisTypeOfInvoice;
    }

    public GregorianCalendar getInvoiceDate() {
        return invoiceDate;
    }

    public void setInvoiceDate(GregorianCalendar invoiceDate) {
        this.invoiceDate = invoiceDate;
    }

    public double getInvoiceAmount() {
        return invoiceAmount;
    }

    public void setInvoiceAmount(double invoiceAmount) {
        this.invoiceAmount = invoiceAmount;
    }

    public long getId_invoice() {
        return id_invoice;
    }

}
