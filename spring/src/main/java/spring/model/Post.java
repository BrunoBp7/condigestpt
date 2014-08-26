package spring.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "Post")
@NamedQuery(name = "Post.findAll", query = "select p from Post p")
public class Post {

    @Id
    @GeneratedValue
    private long id_post;

    @ManyToOne
    @JoinColumn(name = "id_topic")
    private Topic postOfTopic;

    @ManyToOne
    @JoinColumn(name = "id_user")
    private User postOfUser;

    private Date creationTime;
    private String title;
    private String message;

    public Post() {
        super();
    }

    public Post(Topic postOfTopic, User postOfUser, Date creationTime,
            String title, String message) {
        super();
        this.postOfTopic = postOfTopic;
        this.postOfUser = postOfUser;
        this.creationTime = creationTime;
        this.title = title;
        this.message = message;
    }

    public Topic getPostOfTopic() {
        return postOfTopic;
    }

    public void setPostOfTopic(Topic postOfTopic) {
        this.postOfTopic = postOfTopic;
    }

    public User getPostOfUser() {
        return postOfUser;
    }

    public void setPostOfUser(User postOfUser) {
        this.postOfUser = postOfUser;
    }

    public Date getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public long getId_post() {
        return id_post;
    }

}
