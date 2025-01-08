package com.example.dao;

import com.example.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public boolean registerUser(User user) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            session.save(user);
            transaction.commit();
            return true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            System.err.println("Error while registering user: " + e.getMessage());
            return false;
        }
    }

    public boolean userExists(String emailOrPhone) {
        try (Session session = sessionFactory.openSession()) {
            String hql = "FROM User WHERE emailOrPhone = :emailOrPhone";
            User user = session.createQuery(hql, User.class)
                               .setParameter("emailOrPhone", emailOrPhone)
                               .uniqueResult();
            return user != null;
        } catch (Exception e) {
            System.err.println("Error while checking user existence: " + e.getMessage());
            return false;
        }
    }
}
