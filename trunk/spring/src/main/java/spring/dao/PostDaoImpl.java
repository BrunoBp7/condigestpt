package spring.dao;

import java.util.List;

import spring.model.Post;

public class PostDaoImpl extends GenericDaoImpl<Post> implements PostDAO {

    public PostDaoImpl() {
        setEntityClass(Post.class);
    }
    
    public List<Post> findAll() {
        return findAll();
    }
    
    public Post find(long id){
        return find(id);
    }

    public Post save(Post t){
        return save(t);
    }
}
