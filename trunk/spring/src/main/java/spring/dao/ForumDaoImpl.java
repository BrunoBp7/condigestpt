package spring.dao;

import java.util.List;

import spring.model.Forum;

public class ForumDaoImpl extends GenericDaoImpl<Forum> implements ForumDAO {

    public ForumDaoImpl() {
        setEntityClass(Forum.class);
    }

    public List<Forum> findAll() {
        return findAll();
    }

    public Forum find(long id) {
        return find(id);
    }

    public Forum save(Forum t) {
        return save(t);
    }
}
