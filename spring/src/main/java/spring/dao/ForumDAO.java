package spring.dao;

import java.util.List;

import spring.model.Forum;

public interface ForumDAO extends GenericDAO<Forum> {

    public List<Forum> findAll();

    public Forum find(long id);

    public Forum save(Forum t);

    public void remove(Forum t);

    public void remove(long id);
}
