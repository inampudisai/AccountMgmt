package com.chigurupati.dao.hotel;


import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import static java.lang.System.out;
import static org.testng.Assert.*;

public class SpringJDBCHotelTest {
    @BeforeMethod
    public void setUp() throws Exception {

    }

    @AfterMethod
    public void tearDown() throws Exception {
    }

    @Test
    public void testSetJdbcTemplate() throws Exception {


     System.out.println("@Jdbc Template");
    }

    @Test
    public void testInsertBillNo() throws Exception {
        System.out.println("@Insert InsertBillNo");
    }

    public static void main(String[] args){
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(12);
        System.out.println(encoder.encode("abcdefghijkl"));
        ApplicationContext ctx = new ClassPathXmlApplicationContext("/**/spring-dispatcher-servlet.xml");
       // HibernateDaoImpl dao = ctx.getBean(HibernateDaoImpl.class).;
          // HibernateDaoImpl dao = ctx.getBean("hibernateDaoImpl", HibernateDaoImpl.class);
       // System.out.println(ctx.getBean(HibernateDaoImpl.class).setHotelRecord());
    }

}