package condigest.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Type;

@Entity
public class Message {

	@Id
	@GeneratedValue
	private long id_message;

	@Column(nullable = false)
	private String message;

	@Column(nullable = false)
	private String subject;

	@Column(nullable = false)
	private Timestamp date;

	@Column(columnDefinition = "BIT", nullable = false)
	@Type(type = "org.hibernate.type.NumericBooleanType")
	private boolean isReaded = false;

	@Column(columnDefinition = "BIT", nullable = false)
	@Type(type = "org.hibernate.type.NumericBooleanType")
	private boolean isDeleted = false;

	@ManyToOne
	@JoinColumn(name = "id_userSender")
	private User messageSender;

	@ManyToOne
	@JoinColumn(name = "id_userReceiver")
	private User messageReceiver;

	public Message() {
		super();
	}

	public Message(String message, String subject, Timestamp date,
			boolean isReaded, User messageSender, User messageReceiver) {
		super();
		this.message = message;
		this.subject = subject;
		this.date = date;
		this.isReaded = isReaded;
		this.messageSender = messageSender;
		this.messageReceiver = messageReceiver;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public boolean isReaded() {
		return isReaded;
	}

	public void setReaded(boolean isReaded) {
		this.isReaded = isReaded;
	}

	public boolean isDeleted() {
		return isDeleted;
	}

	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}

	public User getMessageSender() {
		return messageSender;
	}

	public void setMessageSender(User messageSender) {
		this.messageSender = messageSender;
	}

	public User getMessageReceiver() {
		return messageReceiver;
	}

	public void setMessageReceiver(User messageReceiver) {
		this.messageReceiver = messageReceiver;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}
}
