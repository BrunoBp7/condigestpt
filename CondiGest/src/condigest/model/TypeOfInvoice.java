package condigest.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class TypeOfInvoice {

    @Id
    @GeneratedValue
    private long id_typeOfInvoice;

    @Column(nullable = false, length = 100)
    private String invoiceTitle;

    public TypeOfInvoice() {
        super();
    }

    public TypeOfInvoice(String invoiceTitle) {
        super();
        this.invoiceTitle = invoiceTitle;
    }

    public String getInvoiceTitle() {
        return invoiceTitle;
    }

    public void setInvoiceTitle(String invoiceTitle) {
        this.invoiceTitle = invoiceTitle;
    }

    public long getId_typeOfInvoice() {
        return id_typeOfInvoice;
    }

}
