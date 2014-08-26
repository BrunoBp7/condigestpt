package spring.manager;

import java.sql.Date;
import java.util.List;

import spring.dao.TopicDAO;
import spring.model.Topic;
import spring.model.User;

public class TopicManager {

    private TopicDAO dao;
    
    public void setDao(TopicDAO dao) {
        this.dao = dao;
    }
    
    public List<Topic> findAll() {
        List<Topic> lt = dao.findAll();
        
        for (Topic t : lt) {
            System.out.println(t.getTitle());
        }
        return lt;
    }
    
    public Topic find(long id) {
        Topic f = dao.find(id);
        return f;
    }
    
    public void createTopic(Topic topicForum, String title, Date creationTime, Date lastPostTime, int totalViews, int totalReplies, User createdBy, User lastPostBy) {
        Topic t = new Topic(topicForum, title, creationTime, lastPostTime, totalViews, totalReplies, createdBy, lastPostBy);
        dao.save(t);
    }
    
    public void remove(Topic t){
        dao.remove(t);
    }
    
    public void remove(long id){
        dao.remove(id);
    }
}
