package com.guet.oos.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.guet.oos.dao.UserDao;
import com.guet.oos.factory.DAOFactory;
import com.guet.oos.po.User;
import com.guet.oos.service.UserService;

public class UserServiceImpl implements UserService {

    private UserDao userDao = DAOFactory.getUserDaoInstance();

    @Override
    public List<User> findByMobile(String mobile) {
        try {
            return userDao.findByMobile(mobile);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean creatUser(User vo) {
        return userDao.doCreate(vo);
    }

}
