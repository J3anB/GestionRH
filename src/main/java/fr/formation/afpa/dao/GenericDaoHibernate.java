package fr.formation.afpa.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.service.ServiceRegistry;

public class GenericDaoHibernate<T, I extends Serializable> implements IGenericDao<T, I> {
	
	private Class<T> entityClass;
	private Session currentSession;
	private Transaction currentTransaction;
	
	public GenericDaoHibernate() {
		ParameterizedType genericSuperclass = (ParameterizedType) getClass().getGenericSuperclass();
		this.entityClass = (Class<T>) genericSuperclass.getActualTypeArguments()[0];
	}
	
	public void closeCurrentSession() {
		currentSession.close();
	}
	
	public Session getCurrentSession() {
		return currentSession;
	}
	private static SessionFactory getSessionFactory() {
		ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		Metadata metadata =new MetadataSources(serviceRegistry).getMetadataBuilder().build();
		return metadata.getSessionFactoryBuilder().build();
		
		
	}
	public Session openCurrentSessionWithTx() {
		currentSession = getSessionFactory().openSession();
		currentTransaction = currentSession.beginTransaction();
		return currentSession;
	}
	
	public void closeCurrentSessionWithTx() {
		currentTransaction.commit();
		currentSession.close();
	}
	
	public Session openCurrentSession() {
		currentSession = getSessionFactory().openSession();
		return currentSession;
	}
	
	
	public Transaction getCurrentTransaction() {
		return currentTransaction;
	}

	public void setCurrentTransaction(Transaction currentTransaction) {
		this.currentTransaction = currentTransaction;
	}

	public void setCurrentSession(Session currentSession) {
		this.currentSession = currentSession;
	}

	@Override
	public T findById(I id) {
		return getCurrentSession().get(entityClass, id);
	}

	@Override
	public List<T> findAll() {
		return getCurrentSession().createQuery("select t from "+entityClass.getSimpleName()+" t").list();
	}

	@Override
	public T save(T t) {
		getCurrentSession().save(t);
		return t;
	}

	@Override
	public T saveOrUpdate(T t) {
		getCurrentSession().saveOrUpdate(t);
		return t;
	}

	@Override
	public String toString() {
		return "GenericDaoHibernate [entityClass=" + entityClass + ", currentSession=" + currentSession
				+ ", currentTransaction=" + currentTransaction + "]";
	}

	@Override
	public T update(T t) {
		getCurrentSession().update(t);
		return t;
	}

	@Override
	public void delete(T t) {
		getCurrentSession().delete(t);
	}

	@Override
	public void deleteById(I id) {
		delete(findById(id));
	}
	
	@Override
    public List<T> findForTable(int start, int total) {
        return getCurrentSession().createQuery("from "+entityClass.getSimpleName()).setFirstResult(start).setMaxResults(total).list();
    }
	
}
