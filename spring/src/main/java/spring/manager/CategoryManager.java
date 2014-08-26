package spring.manager;

import java.util.List;

import spring.dao.CategoryDAO;
import spring.model.Category;

public class CategoryManager {

    private CategoryDAO dao;

    public void setDao(CategoryDAO dao) {
        this.dao = dao;
    }
    
    public List<Category> findAll() {
        List<Category> lc = dao.findAll();
        
        for (Category c : lc) {
            System.out.println(c.getName());
        }
        return lc;
    }
    
    public Category find(long id) {
        Category c = dao.find(id);
        return c;
    }
    
    public void createCategory(String categoryName) {
        Category c= new Category(categoryName);
        dao.save(c);
    }
    
    public void remove(Category cat){
        dao.remove(cat);
    }
    
    public void remove(long id){
        dao.remove(id);
    }
}
