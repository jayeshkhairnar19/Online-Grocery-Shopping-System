package Dao;

//import org.apache.catalina.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;

import Entities.Product;

public class ProductDao {
	
	private SessionFactory factory;

	public ProductDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	public boolean saveProduct(Product p) {
		
		boolean f = false;
		try {
			
			org.hibernate.Session s = this.factory.openSession();
			Transaction tx = s.beginTransaction();
			
			
			s.save(p);
			
			tx.commit();
			s.close();
			f = true;
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
			f = false;
		}
		
		return f;
	}

}