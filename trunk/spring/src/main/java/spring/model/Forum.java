package spring.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Forum")
@NamedQuery(name = "Forum.findAll", query = "select f from Forum f")
public class Forum {

    @Id
    @GeneratedValue
    private long id_forum;

    @ManyToOne
    @JoinColumn(name = "id_category")
    private Category categoryForum;

    @OneToMany(mappedBy = "topicForum")
    private Set<Topic> listOfTopics = new HashSet<Topic>();

    private String name;
    private String description;
    private int totalTopics;
    private int totalPosts;

    public Forum() {
        super();
    }

    public Forum(Category categoryForum, String name, String description) {
        super();
        this.categoryForum = categoryForum;
        this.name = name;
        this.description = description;
    }

    public Category getCategoryForum() {
        return categoryForum;
    }

    public void setCategoryForum(Category categoryForum) {
        this.categoryForum = categoryForum;
    }

    public Set<Topic> getListOfTopics() {
        return listOfTopics;
    }

    public boolean setListOfTopics(Topic topic) {
        return listOfTopics.add(topic);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getTotalTopics() {
        return totalTopics;
    }

    public void setTotalTopics(int totalTopics) {
        this.totalTopics = totalTopics;
    }

    public int getTotalPosts() {
        return totalPosts;
    }

    public void setTotalPosts(int totalPosts) {
        this.totalPosts = totalPosts;
    }

    public long getId_forum() {
        return id_forum;
    }

}
