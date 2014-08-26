package spring.dao;

import java.util.List;

public interface GenericDAO<T> {

    public List<T> findAll();

    public T find(long id);

    public T save(T t);

    public void remove(T t);

    public void remove(long id);

}
