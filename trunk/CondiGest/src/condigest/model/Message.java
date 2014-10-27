package condigest.model;

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
	private long id_sender;

	@Column(nullable = false)
	private long id_receiver;

	@Column(nullable = false)
	private String message;

	@Column(columnDefinition = "BIT", nullable = false)
	@Type(type = "org.hibernate.type.NumericBooleanType")
	private boolean isReaded = false;
	
	@ManyToOne
    @JoinColumn(name = "id_user")
    private User messageSender;

	public Message() {
		super();
	}

	public Message(long id_sender, long id_receiver, String message,
			boolean isReaded) {
		super();
		this.id_sender = id_sender;
		this.id_receiver = id_receiver;
		this.message = message;
		this.isReaded = isReaded;
	}

	public long getId_sender() {
		return id_sender;
	}

	public void setId_sender(long id_sender) {
		this.id_sender = id_sender;
	}

	public long getId_receiver() {
		return id_receiver;
	}

	public void setId_receiver(long id_receiver) {
		this.id_receiver = id_receiver;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public boolean isReaded() {
		return isReaded;
	}

	public void setReaded(boolean isReaded) {
		this.isReaded = isReaded;
	}

	public long getId_message() {
		return id_message;
	}
}
