package spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

@Transactional
public class GenericDaoImpl<T> implements GenericDAO<T> {

    @PersistenceContext
    EntityManager em;
    
    private Class entityClass;
    
    public Class getEntityClass(){
        return entityClass;
    }
    
    public void setEntityClass(Class entityClass) {
        this.entityClass = entityClass;
    }

    public final void setPersistenceClass(Class<T> persistenceClass) {
        this.entityClass = persistenceClass;
    }

    @SuppressWarnings("unchecked")
    public List<T> findAll() {
        return (List<T>) em.createNamedQuery(entityClass.getSimpleName()+ "findAll");
    }

    public T find(long id) {
        em.find(entityClass, id);
        return null;
    }

    public T save(T t) {
        em.merge(t);
        return null;
    }

    public void remove(T t) {
        em.refresh(t);
    }

    public void remove(long id) {
        em.remove(em.find(entityClass, id));
    }
    
    
}
