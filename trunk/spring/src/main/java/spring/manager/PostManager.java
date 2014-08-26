package spring.manager;

import java.sql.Date;
import java.util.List;

import spring.dao.PostDAO;
import spring.model.Post;
import spring.model.Topic;
import spring.model.User;

public class PostManager {
    
    private PostDAO dao;
    
    public void setDao(PostDAO dao) {
        this.dao = dao;
    }
    
    public List<Post> findAll() {
        List<Post> lp = dao.findAll();
        
        for (Post p : lp) {
            System.out.println(p.getTitle());
        }
        return lp;
    }
    
    public Post find(long id) {
        Post p = dao.find(id);
        return p;
    }
    
    public void createCategory(Topic postOfTopic, User postOfUser, Date creationTime, String title, String message) {
        Post p = new Post(postOfTopic, postOfUser, creationTime, title, message); 
        dao.save(p);
    }
    
    public void remove(Post p){
        dao.remove(p);
    }
    
    public void remove(long id){
        dao.remove(id);
    }

}
