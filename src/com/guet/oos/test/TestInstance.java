package com.guet.oos.test;

import com.guet.oos.constant.DateTimeFormat;
import com.guet.oos.factory.ServiceFactory;
import com.guet.oos.po.Administrator;
import com.guet.oos.po.User;
import com.guet.oos.service.AdministratorService;
import com.guet.oos.service.UserService;
import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TestInstance {


    SimpleDateFormat sf = new SimpleDateFormat(DateTimeFormat.YYYY_MM_DD_HH_MM_SS);

    UserService userService = ServiceFactory.getUserServiceInstance();

    AdministratorService administratorService = ServiceFactory.getAdministratorServiceInstance();

    @Test
    public void creatorUser() {

        User user = new User();

        user.setUsername("陈宣锦");
        user.setPassword("123456");
        user.setMobile("18477062310");
        user.setSex("先生");
        user.setCreatorTime(sf.format(new Date()));
        user.setUpdateTime(sf.format(new Date()));

        System.out.println(userService.creatUser(user));
    }

    @Test
    public void creatorAdministrator() {

        Administrator administrator = new Administrator();

        administrator.setUsername("admin");
        administrator.setUpdateTime(sf.format(new Date()));
        administrator.setPicAddress("123.png");
        administrator.setPassword("admin");
        administrator.setMaximumAuthority(true);
        administrator.setCreatorTime(sf.format(new Date()));
        administrator.setCreator("system");

        System.out.println(administratorService.creatorAdministrator(administrator));
    }

}
