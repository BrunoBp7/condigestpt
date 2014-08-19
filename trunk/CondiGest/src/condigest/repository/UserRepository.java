package condigest.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import condigest.model.User;

@Repository
@Transactional
public class UserRepository {

    @PersistenceContext
    EntityManager em;

    public User findUserById(long id) {
        return (User) em
                .createQuery("SELECT u FROM USER u WHERE u.id_user = :id")
                .setParameter("id", id).getSingleResult();
    }
    
    @SuppressWarnings("unchecked")
    public List<User> getListOfAllUsers() {
        return em.createQuery("SELECT * FROM USER").getResultList();
    }
    
    public User findUserByFraction(long id_fraction) {
        return (User) em
                .createQuery("SELECT u FROM USER u JOIN u.listOfFractions f WHERE f.id_fraction = :id_fraction")
                .setParameter("id_fraction", id_fraction).getSingleResult();
    }
    
}
