package com.my.sevice;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.my.dao.UserDao;
import com.my.entity.Page;
import com.my.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserDao userDao;
    @Override
    public PageInfo<User> queryUsers(Page page) {
        PageHelper.startPage(page.getPageNum(),page.getPageSize());
        List<User> users = userDao.queryUsers();
        return new PageInfo<User>(users);
    }
}
