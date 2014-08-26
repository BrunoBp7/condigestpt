package spring.model;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "User")
@NamedQuery(name = "User.findAll", query = "select u from User u")
public class User {

    @Id
    @GeneratedValue
    private long id_user;

    @OneToMany(mappedBy = "postOfUser")
    private Set<Post> listOfPosts = new HashSet<Post>();

    private String username;
    private String password;
    private String firstName;
    private String lastName;
    private String email;
    private int totalPosts;
    private Date registrationDate;
    private Date lastVisit;

    public User() {
        super();
    }

    public User(String username, String password, String firstName,
            String lastName, String email, int totalPosts,
            Date registrationDate, Date lastVisit) {
        super();
        this.username = username;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.totalPosts = totalPosts;
        this.registrationDate = registrationDate;
        this.lastVisit = lastVisit;
    }

    public Set<Post> getListOfPosts() {
        return listOfPosts;
    }

    public boolean setListOfPosts(Post post) {
        return listOfPosts.add(post);
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getTotalPosts() {
        return totalPosts;
    }

    public void setTotalPosts(int totalPosts) {
        this.totalPosts = totalPosts;
    }

    public Date getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Date registrationDate) {
        this.registrationDate = registrationDate;
    }

    public Date getLastVisit() {
        return lastVisit;
    }

    public void setLastVisit(Date lastVisit) {
        this.lastVisit = lastVisit;
    }

    public long getIdUser() {
        return id_user;
    }

}
