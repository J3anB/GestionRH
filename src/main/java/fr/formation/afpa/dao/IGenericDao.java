package fr.formation.afpa.dao;

import java.io.Serializable;

import java.util.List;

public interface IGenericDao<T, I extends Serializable> {
	
	T findById(I id);
	List<T> findAll();
	
	
	T save(T t);
	T saveOrUpdate(T t);
	
	T update(T t);
	
	void delete(T t);
	void deleteById(I id);
	
    public List<T> findForTable(int start, int total);
}
