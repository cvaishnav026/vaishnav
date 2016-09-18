package com.niit.dao;

import java.util.List;

import com.niit.model.Forum;

public interface ForumDAO {

	public void createNewForum(Forum forum);
	public List<Forum> getForumList(String username);
	public void delete(int forumid);
	public List<Forum> getForum();
	
}
