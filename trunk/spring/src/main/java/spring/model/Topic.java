package spring.model;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Topic")
@NamedQuery(name = "Topic.findAll", query = "select t from Topic t")
public class Topic {

    @Id
    @GeneratedValue
    private long id_topic;

    @ManyToOne
    @JoinColumn(name = "id_forum")
    private Topic topicForum;

    @OneToMany(mappedBy = "postOfTopic")
    private Set<Post> listOfPosts = new HashSet<Post>();

    private String title;
    private Date creationTime;
    private Date lastPostTime;
    private int totalViews;
    private int totalReplies;
    
//    @OneToOne
//    @JoinColumn(name="id_user")
//    private User createdBy;
//    
//    @OneToOne
//    @JoinColumn(name="id_user")
//    private User lastPostBy;

    public Topic() {
        super();
    }

    public Topic(Topic topicForum, String title, Date creationTime,
            Date lastPostTime, int totalViews, int totalReplies,
            User createdBy, User lastPostBy) {
        super();
        this.topicForum = topicForum;
        this.title = title;
        this.creationTime = creationTime;
        this.lastPostTime = lastPostTime;
        this.totalViews = totalViews;
        this.totalReplies = totalReplies;
//        this.createdBy = createdBy;
//        this.lastPostBy = lastPostBy;
    }

    public Topic getTopicForum() {
        return topicForum;
    }

    public void setTopicForum(Topic topicForum) {
        this.topicForum = topicForum;
    }

    public Set<Post> getListOfPosts() {
        return listOfPosts;
    }

    public boolean setListOfPosts(Post post) {
        return listOfPosts.add(post);
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }

    public Date getLastPostTime() {
        return lastPostTime;
    }

    public void setLastPostTime(Date lastPostTime) {
        this.lastPostTime = lastPostTime;
    }

    public int getTotalViews() {
        return totalViews;
    }

    public void setTotalViews(int totalViews) {
        this.totalViews = totalViews;
    }

    public int getTotalReplies() {
        return totalReplies;
    }

    public void setTotalReplies(int totalReplies) {
        this.totalReplies = totalReplies;
    }

//    public User getCreatedBy() {
//        return createdBy;
//    }
//
//    public void setCreatedBy(User createdBy) {
//        this.createdBy = createdBy;
//    }
//
//    public User getLastPostBy() {
//        return lastPostBy;
//    }
//
//    public void setLastPostBy(User lastPostBy) {
//        this.lastPostBy = lastPostBy;
//    }

    public long getId_topic() {
        return id_topic;
    }

}
