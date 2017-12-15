package com.chigurupati.dao;

import com.chigurupati.model.base.NewRegistration;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class RegistrationDaoImpl {


    private SessionFactory sessionFactory;

    public boolean saveOrUpdate(NewRegistration registration) {
        // TODO Auto-generated method stub
        sessionFactory.getCurrentSession().saveOrUpdate(registration);
        return true;
    }

 /*   public List<NewRegistration> list() {
        return sessionFactory.getCurrentSession().createQuery("from NewRegistration").list();
    }*/


    public boolean delete(NewRegistration registration) {
        try {
            sessionFactory.getCurrentSession().delete(registration);
        } catch (Exception ex) {
            return false;
        }

        return true;
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
