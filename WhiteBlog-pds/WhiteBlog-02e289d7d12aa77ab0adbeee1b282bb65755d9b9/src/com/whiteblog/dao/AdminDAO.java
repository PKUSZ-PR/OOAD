package com.whiteblog.dao;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.whiteblog.entity.Admin;

/**
 * A data access object (DAO) providing persistence and search support for Admin
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.whiteblog.entity.Admin
 * @author MyEclipse Persistence Tools
 * log: the logger to save the message by Factory
 */
public class AdminDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(AdminDAO.class);
	// property constants
	public static final String ADMINNAME = "adminname";
	public static final String PASSWORD = "password";

	protected void initDao() {
		// do nothing
	}
	/**
	 * Save entity info to DB
	 * @param transientInstance: the entity to be save
	 */
	public void save(Admin transientInstance) {
		log.debug("saving Admin instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}
	/**
	 * Delete entity info from DB
	 * @param persistentInstance the entity to be deleted
	 */
	public void delete(Admin persistentInstance) {
		log.debug("deleting Admin instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}
	/**
	 * Find Admin Entity according to id
	 * @param id
	 * @return return a Admin Entity that the user wants
	 */
	public Admin findById(java.lang.Integer id) {
		log.debug("getting Admin instance with id: " + id);
		try {
			Admin instance = (Admin) getHibernateTemplate().get(
					"com.whiteblog.entity.Admin", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
	/**
	 * Find Admin Entity by Entity
	 * @param instance
	 * @return a List with Admin entity
	 */
	public List<Admin> findByExample(Admin instance) {
		log.debug("finding Admin instance by example");
		try {
			List<Admin> results = (List<Admin>) getHibernateTemplate()
					.findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Admin instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Admin as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<Admin> findByAdminname(Object adminname) {
		return findByProperty(ADMINNAME, adminname);
	}

	public List<Admin> findByPassword(Object password) {
		return findByProperty(PASSWORD, password);
	}

	public List findAll() {
		log.debug("finding all Admin instances");
		try {
			String queryString = "from Admin";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Admin merge(Admin detachedInstance) {
		log.debug("merging Admin instance");
		try {
			Admin result = (Admin) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}
	/**
	 * 
	 * @param instance the entity that to be modified
	 */
	public void attachDirty(Admin instance) {
		log.debug("attaching dirty Admin instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Admin instance) {
		log.debug("attaching clean Admin instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static AdminDAO getFromApplicationContext(ApplicationContext ctx) {
		return (AdminDAO) ctx.getBean("AdminDAO");
	}
}