package com.niit.services;

import java.util.List;

import com.niit.model.Forum;

public interface ForumService {

	
	public void createNewForum(Forum forum);
	public List<Forum> getForumList(String username);
	public void delete(int forumid);
	public List<Forum> getForum();
}
