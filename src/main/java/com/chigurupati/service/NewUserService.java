package com.chigurupati.service;

import com.chigurupati.dao.RegistrationDaoImpl;
import com.chigurupati.model.base.NewRegistration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewUserService {

    @Autowired
    RegistrationDaoImpl register;

    public boolean saveOrUpdate(NewRegistration newUser) {
        return register.saveOrUpdate(newUser);
    }
}
