package spring.dao;

import java.util.List;

import spring.model.Topic;

public interface TopicDAO extends GenericDAO<Topic>{

    public List<Topic> findAll();

    public Topic find(long id);

    public Topic save(Topic t);

    public void remove(Topic t);

    public void remove(long id);
}
