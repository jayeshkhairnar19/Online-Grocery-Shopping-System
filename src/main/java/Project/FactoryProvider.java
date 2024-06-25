package Project;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {

    private static SessionFactory factory;

    public static synchronized SessionFactory getFactory() {
        try {
            if (factory == null) {
                factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
            }
        } catch (Exception e) {
            // Handle or log the exception appropriately for your application
            e.printStackTrace();
        }
        return factory;
    }
}
