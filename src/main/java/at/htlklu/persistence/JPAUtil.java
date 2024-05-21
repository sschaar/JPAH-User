package at.htlklu.persistence;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JPAUtil {

    private static EntityManagerFactory factory;
    private static final String PERSISTENCE_UNIT_NAME = "default"; //check your unit name here!

    public static EntityManagerFactory getEntityManagerFactory() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        if (factory == null) {
            factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        }
        return factory;
    }

    public static void shutdown() {
        if (factory != null)
            factory.close();
        factory = null;
    }

}
