package spring.dao;

import java.util.List;

import spring.model.User;

public interface UserDAO extends GenericDAO<User> {

    public List<User> findAll();

    public User find(long id);

    public User save(User t);

    public void remove(User t);

    public void remove(long id);
}
