package spring.manager;

import java.sql.Date;
import java.util.List;

import spring.dao.UserDAO;
import spring.model.User;

public class UserManager {
    
    private UserDAO dao;
    
    public void setDao(UserDAO dao) {
        this.dao = dao;
    }
    
    public List<User> findAll() {
        List<User> lu = dao.findAll();
        
        for (User u : lu) {
            System.out.println(u.getUsername());
        }
        return lu;
    }
    
    public User find(long id) {
        User f = dao.find(id);
        return f;
    }
    
    public void createUser(String username, String password, String firstName,String lastName, String email, int totalPosts,Date registrationDate, Date lastVisit) {
        User u = new User(username, password, firstName, lastName, email, totalPosts, registrationDate, lastVisit);
        dao.save(u);
    }
    
    public void remove(User u){
        dao.remove(u);
    }
    
    public void remove(long id){
        dao.remove(id);
    }

}
