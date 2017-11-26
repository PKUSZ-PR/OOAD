package com.whiteblog.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.whiteblog.entity.Blog;
import com.whiteblog.entity.Blogtype;
import com.whiteblog.service.BlogManagerImpl;
import com.whiteblog.service.BlogTypeServiceImp;

public class BlogTypeAction {
	private String mesContent2;
	private Integer id;
	private Integer bid;
	private BlogTypeServiceImp blogtypeService;
	private BlogManagerImpl blogManager;
	static public final  String SUCCESS = "success";
	static public final  String ERROR = "error";
	
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	public BlogManagerImpl getBlogManager() {
		return blogManager;
	}
	public void setBlogManager(BlogManagerImpl blogManager) {
		this.blogManager = blogManager;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMesContent2() {
		return mesContent2;
	}
	public void setMesContent2(String mesContent2) {
		this.mesContent2 = mesContent2;
	}
	public BlogTypeServiceImp getBlogtypeService() {
		return blogtypeService;
	}
	public void setBlogtypeService(BlogTypeServiceImp blogtypeService) {
		this.blogtypeService = blogtypeService;
	}
	public String addTags(){
		String str = mesContent2;  
		
		System.out.println(id);
		
			List<Blogtype> btl = blogtypeService.getBlogtypeDAO().findByTypename(str);
			if(btl.size() < 1) {
				Blogtype bt = new Blogtype();
				bt.setUserId(id);
				bt.setTypename(str);
				blogtypeService.getBlogtypeDAO().save(bt);
				Blog b = blogManager.getBlogDao().findById(id);
				List<Blogtype> list = blogtypeService.getBlogtypeDAO().findByTypename(str);
				bt = list.get(list.size() - 1);
				b.setTypeId(bt.getTypeId());
				blogManager.getBlogDao().attachDirty(b);
			}
			else{ 
				for(int i = 0; i < btl.size(); i++){
					if(btl.get(i).getTypename().compareTo(str) == 0){
						Blogtype bt = new Blogtype();
						bt.setUserId(id);
						bt.setTypename(str);
						blogtypeService.getBlogtypeDAO().save(bt);
						Blog b = blogManager.getBlogDao().findById(id);
						List<Blogtype> list = blogtypeService.getBlogtypeDAO().findByTypename(str);
						bt = list.get(list.size() - 1);
						b.setTypeId(bt.getTypeId());
						blogManager.getBlogDao().attachDirty(b);
						break;
					}
				}
			}
			
			/*增加了一部分工能，显示所有的Tags*/
			List<Blogtype> abtl = (List<Blogtype>)blogtypeService.getBlogtypeDAO().findAll();
			
			List<Blogtype> tmpList = new ArrayList<Blogtype>();
			
			for(Blogtype bt: abtl){
				boolean flag = false;
				for(Blogtype tmp: tmpList){
					if(tmp.getTypename().compareTo(bt.getTypename())== 0){
						flag = true;
						break;
					}
				}
				if(!flag)
					tmpList.add(bt);
			}
			
			ActionContext.getContext().put("allTags", tmpList);		
		return SUCCESS;
	}
}
