package spring.dao;

import java.util.List;

import spring.model.Category;

public class CategoryDaoImpl extends GenericDaoImpl<Category> implements CategoryDao {

    public CategoryDaoImpl() {
        setEntityClass(Category.class);
    }

    public List<Category> findAll() {
        return findAll();
    }

    public Category find(long id) {
        return find(id);
    }

    public Category save(Category t) {
        return save(t);
    }
}
