package spring.dao;

import java.util.List;

import spring.model.Category;

public interface CategoryDao extends GenericDAO<Category> {
    
    public List<Category> findAll();

    public Category find(long id);

    public Category save(Category t);

    public void remove(Category t);

    public void remove(long id);
}
