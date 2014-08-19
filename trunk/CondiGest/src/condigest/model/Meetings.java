package condigest.model;

import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Meetings {

    @Id
    @GeneratedValue
    private long id_meeting;

    @OneToMany(mappedBy = "userPresent")
    private Set<User> usersPresentsInMeeting = new HashSet<User>();

    @Column(nullable = false)
    private GregorianCalendar meetingDate;
    
    @Column(nullable = false, length = 100)
    private String meetingSubject;
    
    @Column(nullable = false)
    private String meetingDescription;

    public Meetings() {
        super();
    }

    public Meetings(GregorianCalendar meetingDate, String meetingSubject,
            String meetingDescription) {
        super();
        this.meetingDate = meetingDate;
        this.meetingSubject = meetingSubject;
        this.meetingDescription = meetingDescription;
        //Before the meeting happens, we can not say the people who will be present
        //After the meeting, use the set method to register the people who were present.
    }

    public Set<User> getUsersPresentsInMeeting() {
        return usersPresentsInMeeting;
    }

    public void setUsersPresentsInMeeting(Set<User> usersPresentsInMeeting) {
        this.usersPresentsInMeeting = usersPresentsInMeeting;
    }

    public GregorianCalendar getMeetingDate() {
        return meetingDate;
    }

    public void setMeetingDate(GregorianCalendar meetingDate) {
        this.meetingDate = meetingDate;
    }

    public String getMeetingSubject() {
        return meetingSubject;
    }

    public void setMeetingSubject(String meetingSubject) {
        this.meetingSubject = meetingSubject;
    }

    public String getMeetingDescription() {
        return meetingDescription;
    }

    public void setMeetingDescription(String meetingDescription) {
        this.meetingDescription = meetingDescription;
    }

    public long getId_meeting() {
        return id_meeting;
    }
}
