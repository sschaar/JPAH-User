package at.htlklu.persistence;

import at.htlklu.entities.Comment;
import at.htlklu.entities.Users;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;

import java.util.List;

public class Dao {

    // Geben Sie alle Benutzer nach Namen sortiert aus
    public static List<Users> findAllUsersSortedByName() {
        EntityManager em = JPAUtil.getEntityManagerFactory().createEntityManager();
        return em.createQuery("SELECT u FROM Users u ORDER BY u.username", Users.class).getResultList();
    }

    // Geben Sie alle Benutzer aus, die eine HTL-Emailadresse haben
    public static List<Users> findUsersWithHTLEmail() {
        EntityManager em = JPAUtil.getEntityManagerFactory().createEntityManager();
        return em.createQuery("SELECT u FROM Users u WHERE u.email LIKE :email", Users.class)
                .setParameter("email", "%@htl-klu.at")
                .getResultList();
    }

    // Geben Sie alle Kommentare des Benutzers mit der ID 8 aus
    public static List<Comment> findCommentsByUserId(int userId) {
        EntityManager em = JPAUtil.getEntityManagerFactory().createEntityManager();
        return em.createQuery("SELECT c FROM Comment c WHERE c.usersByUserId.id = :userId", Comment.class)
                .setParameter("userId", userId)
                .getResultList();
    }

    public static Integer findUserIdByName(String firstname, String surname){
        EntityManager em = JPAUtil.getEntityManagerFactory().createEntityManager();
        return em.createQuery("SELECT u.id FROM Users u WHERE u.firstname = :firstname and u.surname = :surname", Integer.class)
                .setParameter("firstname", firstname)
                .setParameter("surname", surname)
                .getSingleResult();
    }

    // Erstellen Sie in der DB einen neuen Kommentar für den Benutzer Victor Mühleder
    public static void createCommentForUser(String firstname, String surname, String commentText) {
        EntityManager em = JPAUtil.getEntityManagerFactory().createEntityManager();
        EntityTransaction et = em.getTransaction();
        Users uTransient;
        try {
            et.begin();
            uTransient = em.find(Users.class, findUserIdByName(firstname, surname));
            Comment newC = new Comment(commentText, uTransient);
            uTransient.addComment(newC);
            em.persist(uTransient);
            et.commit();
        } finally {
            if (et.isActive()) {
                et.rollback();
            }
            em.close();
        }
    }

    // Löschen Sie alle Kommentare zu einem Benutzer unter Angabe seiner ID
    public static void deleteCommentsByUserId(int userId) {
        EntityManager em = JPAUtil.getEntityManagerFactory().createEntityManager();
        EntityTransaction et = em.getTransaction();
        Users uTransient;
        try {
            et.begin();
            uTransient = em.find(Users.class, userId);
            uTransient.getCommentsById().clear();
            em.merge(uTransient);
            et.commit();
    } finally {
        if (et.isActive()) {
            et.rollback();
        }
        em.close();
    }
}

}
