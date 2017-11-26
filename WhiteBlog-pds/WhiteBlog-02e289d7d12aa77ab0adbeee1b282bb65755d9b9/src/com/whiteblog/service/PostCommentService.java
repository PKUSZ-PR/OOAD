package com.whiteblog.service;

import java.lang.reflect.InvocationTargetException;

import javax.ws.rs.core.Application;

import org.apache.commons.beanutils.BeanUtils;
import org.jboss.weld.context.ApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.whiteblog.dao.CommentDAO;
import com.whiteblog.entity.Comment;
import com.whiteblog.entity.User;
import com.whiteblog.form.CommentForm;
import com.whiteblog.form.UserForm;

public class PostCommentService {
	private CommentDAO commentDAO;
	
	public String post(CommentForm commentform) throws IllegalAccessException, InvocationTargetException{
		Comment comment = new Comment();
		BeanUtils.copyProperties(comment,commentform);
		comment.setBlogId((Integer)ActionContext.getContext().getSession().get("blogId"));
		if(ActionContext.getContext().getSession().containsKey("loginUser")){
			comment.setUserId((Integer)((User) ActionContext.getContext().getSession().get("loginUser")).getUserId());
			comment.setUsername((String)((User) ActionContext.getContext().getSession().get("loginUser")).getUsername());
		}else{
			comment.setUserId(-1);
		}
		commentDAO.save(comment);
		return "SUCCESS";
		
	}
	
	public CommentDAO getCommentDAO() {
		return commentDAO;
	}

	public void setCommentDAO(CommentDAO commentDAO) {
		this.commentDAO = commentDAO;
	}
}
