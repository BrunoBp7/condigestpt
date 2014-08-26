package spring.dao;

import java.util.List;

import spring.model.User;

public class UserDaoImpl extends GenericDaoImpl<User> implements UserDAO {
    
    public UserDaoImpl(){
        setEntityClass(User.class);
    }
    
    public List<User> findAll() {
        return findAll();
    }
    
    public User find(long id){
        return find(id);
    }

    public User save(User t){
        return save(t);
    }
}
