package Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import Entities.User;

public class userDao {

    private SessionFactory factory;

    public userDao(SessionFactory factory) {
        this.factory = factory;
    }

    // Get user by email and password
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        Session session = null;
        try {
            String query = "from User where userEmail=:e and userPassword=:p";
            session = this.factory.openSession();
            org.hibernate.Query q = session.createQuery(query);
            q.setParameter("e", email);
            q.setParameter("p", password);
            user = (User) q.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace(); // Print the full stack trace for debugging
        } finally {
            // Always close the session after use
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return user;
    }
}
