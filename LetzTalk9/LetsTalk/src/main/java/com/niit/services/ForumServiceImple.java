package com.niit.services;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.ForumDAO;
import com.niit.model.Forum;

@Service
public class ForumServiceImple implements ForumService{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private ForumDAO forumDAO;
	
	public ForumServiceImple(SessionFactory sf)
	{
		this.sessionFactory=sf;
	}

	@Override
	public void createNewForum(Forum forum) {
		forumDAO.createNewForum(forum);
		
	}

	@Override
	public List<Forum> getForumList(String username) {
		// TODO Auto-generated method stub
		return forumDAO.getForumList(username);
	}

	@Override
	public void delete(int forumid) {
		forumDAO.delete(forumid);
		
	}

	@Override
	public List<Forum> getForum() {
		// TODO Auto-generated method stub
		return forumDAO.getForum();
	}

}
