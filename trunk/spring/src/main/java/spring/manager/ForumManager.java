package spring.manager;

import java.util.List;

import spring.dao.ForumDAO;
import spring.model.Category;
import spring.model.Forum;

public class ForumManager {
    
    private ForumDAO dao;

    
    public void setDao(ForumDAO dao) {
        this.dao = dao;
    }
    
    public List<Forum> findAll() {
        List<Forum> lf = dao.findAll();
        
        for (Forum f : lf) {
            System.out.println(f.getName());
        }
        return lf;
    }
    
    public Forum find(long id) {
        Forum f = dao.find(id);
        return f;
    }
    
    public void createForum(Category categoryForum, String name, String description) {
        Forum f = new Forum(categoryForum, name, description);
        dao.save(f);
    }
    
    public void remove(Forum f){
        dao.remove(f);
    }
    
    public void remove(long id){
        dao.remove(id);
    }
}
