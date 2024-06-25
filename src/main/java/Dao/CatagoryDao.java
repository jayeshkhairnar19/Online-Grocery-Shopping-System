package Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import Entities.Categories;

public class CatagoryDao {
	
	private SessionFactory factory;

	public CatagoryDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	public int saveCatagory(Categories cat) {
		
		Session s = this.factory.openSession();
		Transaction tx = s.beginTransaction();
		
		int catId = (int) s.save(cat);
		tx.commit();
		
		
		
		s.close();
		return catId;
		
	}
	
	
	public List<Categories> getCatagories(){
		Session s = this.factory.openSession();
		
		Query q = s.createQuery("from Categories");
		List<Categories> list = q.list();
		return list;
		
		
	}
	
	public Categories getCatagory(int cId) {
		Categories cat = null;
		try {
			
			Session s = this.factory.openSession();
			cat  = (Categories) s.get(Categories.class, cId);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return cat;
	}
	
	
}