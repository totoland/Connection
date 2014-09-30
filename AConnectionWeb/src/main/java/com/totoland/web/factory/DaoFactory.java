/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.totoland.web.factory;

import com.totoland.web.service.GennericService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 *
 * @author Totoland
 */
public class DaoFactory {

    public static GennericService createGennericService() {
        ApplicationContext bf = new ClassPathXmlApplicationContext("classpath:**/applicationContext.xml");
        return (GennericService) bf.getBean("gennericService");
    }
}
