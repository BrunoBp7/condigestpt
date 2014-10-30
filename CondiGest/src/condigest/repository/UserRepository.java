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
                .createQuery("SELECT u FROM User u WHERE u.id_user = :id")
                .setParameter("id", id).getSingleResult();
    }
    
    public User findUserByNameOrEmail(String nameOrEmail) {
        User user = null;
        try {
            return user = (User) em
                    .createQuery("SELECT u FROM User u WHERE (u.userName = :nameOrEmail) or (u.primaryEmail = :nameOrEmail)")
                    .setParameter("nameOrEmail", nameOrEmail).getSingleResult();
        } catch (Exception e) {
            System.out.println("não encontrado user");
            return user;
        }
    }
    
    public boolean isTheRightPassword(long id, String md5Password) {        
        User user = null;
        try {
            user = (User) em.createQuery("SELECT u FROM User u WHERE u.id_user = :id").setParameter("id", id).getSingleResult();
        } catch (Exception e) {
            System.out.println("não encontrado user");
            return false;
        }

        if (user.getPassword().equals(md5Password)) {
            return true;
        } else {
            System.out.println("pass doenst match");
            return false;
        }
    }
    
    @SuppressWarnings("unchecked")
    public List<User> getListOfAllUsers() {
        return em.createQuery("SELECT u FROM User u").getResultList();
    }
    
    public User findUserByFraction(long id_fraction) {
        return (User) em
                .createQuery("SELECT u FROM User u JOIN u.listOfFractions f WHERE f.id_fraction = :id_fraction")
                .setParameter("id_fraction", id_fraction).getSingleResult();
    }
    
    public void persist(User user){
    	em.persist(user);
    }
    
    public void merge(User user) {
    	em.merge(user);
	}
    
}
