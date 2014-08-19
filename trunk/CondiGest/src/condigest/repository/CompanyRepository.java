package condigest.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import condigest.model.Company;

@Repository
@Transactional
public class CompanyRepository {

    @PersistenceContext
    EntityManager em;

    public Company findCompanyById(long id) {
        return (Company) em
                .createQuery("SELECT c FROM COMPANY c WHERE c.id_company = :id")
                .setParameter("id", id).getSingleResult();
    }
    
    @SuppressWarnings("unchecked")
    public List<Company> getAllCompanys() {
        return em.createQuery("SELECT * FROM COMPANY").getResultList();
    }   
    
    public Company findCompanyByInvoice(long id_invoice) {
        return (Company) em
                .createQuery("SELECT c FROM COMPANY c JOIN c.listOfInvoices i WHERE i.id_invoice = :id_invoice")
                .setParameter("id_invoice", id_invoice).getSingleResult();
    }
    
   
}
