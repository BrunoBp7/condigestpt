package spring.dao;

import java.util.List;

import spring.model.Topic;

public class TopicDaoImpl extends GenericDaoImpl<Topic> implements TopicDAO {

    public TopicDaoImpl() {
        setEntityClass(Topic.class);
    }
    
    public List<Topic> findAll() {
        return findAll();
    }
    
    public Topic find(long id){
        return find(id);
    }

    public Topic save(Topic t){
        return save(t);
    }
}
