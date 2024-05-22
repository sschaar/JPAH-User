package at.htlklu.app;

import at.htlklu.persistence.Dao;

public class LoginHandler {
    public static void main(String[] args) {
        System.out.println("findAllUsersSortedbyName");
        System.out.println(Dao.findAllUsersSortedByName());

        System.out.println("findUsersWithHTLEmail");
        System.out.println(Dao.findUsersWithHTLEmail());

        System.out.println("findCommentsByUserId(8)");
        System.out.println(Dao.findCommentsByUserId(8));

        System.out.println("findUserIdByName");
        System.out.println(Dao.findUserIdByName("Victor", "Mühleder"));

        System.out.println("createCommentForUser");
        Dao.createCommentForUser("Victor", "Mühleder", "Test");

        System.out.println("deleteCommentsByUserId");
        Dao.deleteCommentsByUserId(10);

        System.out.println("checkPassword");
        System.out.println(Dao.checkPassword("VMühleder", "ssoru128"));
    }
}
