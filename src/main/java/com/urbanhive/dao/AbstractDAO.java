package com.urbanhive.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public abstract class AbstractDAO<M, ID> {
	
	@PersistenceContext
	protected EntityManager manager;
	
	public abstract M findById(long id);
	public abstract void save(M object);
	public abstract List<M> list();
}
