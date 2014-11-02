package condigest.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import condigest.model.Address;

@Repository
@Transactional
public class AddressRepository {

	@PersistenceContext
	EntityManager em;

	public Address findAddressByCompanyId(long id) {
		return (Address) em
				.createQuery("SELECT a FROM Address a WHERE a.id_company = :id")
				.setParameter("id", id).getSingleResult();
	}

	public Address findAddressByUserId(long id) {
		return (Address) em
				.createQuery("SELECT a FROM Address a WHERE a.id_user = :id")
				.setParameter("id", id).getSingleResult();
	}
	
	public void persist(Address address) {
		em.persist(address);
	}
	
	public void merge(Address address) {
		em.merge(address);
	}
	
	public void remove(Address address) {
		em.remove(address);		
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
