package com.urbanhive.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.urbanhive.model.MessageForm;

@Repository
public class MessageDAO extends AbstractDAO<MessageForm, Long> {

	@Override
	public MessageForm findById(long id) {
		MessageForm message = manager.find(MessageForm.class, id);
		return message;
	}

	@Override
	public void save(MessageForm message) {
		manager.persist(message);
	}

	@Override
	public List<MessageForm> list() {
		return manager.createQuery("select m from MessageForm m", MessageForm.class).getResultList();
	}

	public Long getLastIndex() {
		return ((MessageForm) manager.createQuery("select m from MessageForm m order by m.id desc").setMaxResults(1)
				.getResultList().get(0)).getId();
	}

}
