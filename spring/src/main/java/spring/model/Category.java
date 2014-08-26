package spring.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Category")
@NamedQuery(name = "Category.findAll", query = "select c from Category c")
public class Category {

    @Id
    @GeneratedValue
    private long id_category;

    private String name;
    
    @OneToMany(mappedBy = "categoryForum")
    private Set<Forum> listOfForuns = new HashSet<Forum>();

    public Category() {
        super();
    }

    public Category(String name) {
        super();
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getIdcategory() {
        return id_category;
    }

    public Set<Forum> getListOfForuns() {
        return listOfForuns;
    }

    public boolean setListOfForuns(Forum forum) {
        return listOfForuns.add(forum);
    }

    public long getId_category() {
        return id_category;
    }

}
