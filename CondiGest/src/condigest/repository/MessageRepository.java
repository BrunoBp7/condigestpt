package condigest.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import condigest.model.Message;

@Transactional
@Repository
public class MessageRepository {

	@PersistenceContext
	EntityManager em;

	public void persist(Message msg) {
		em.persist(msg);
	}

	public void merge(Message msg) {
		em.merge(msg);
	}

	public Message findMessageById(long id) {
		return (Message) em
				.createQuery("SELECT m FROM Message m WHERE m.id_message= :id")
				.setParameter("id", id).getSingleResult();
	}

	@SuppressWarnings("unchecked")
	public List<Message> getAllReceivedMessagesById(long id) {
		return em
				.createQuery(
						"SELECT m FROM Message m WHERE m.id_userReceiver = :id")
				.setParameter("id", id).getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<Message> getAllSentMessagesById(long id) {
		return em
				.createQuery(
						"SELECT m FROM Message m WHERE m.id_userSender= :id")
				.setParameter("id", id).getResultList();
	}

}
