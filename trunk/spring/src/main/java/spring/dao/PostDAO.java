package spring.dao;

import java.util.List;

import spring.model.Post;

public interface PostDAO extends GenericDAO<Post>{

    public List<Post> findAll();

    public Post find(long id);

    public Post save(Post t);

    public void remove(Post t);

    public void remove(long id);
}
