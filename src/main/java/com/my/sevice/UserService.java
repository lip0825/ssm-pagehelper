package com.my.sevice;

import com.github.pagehelper.PageInfo;
import com.my.entity.Page;
import com.my.entity.User;

import java.util.List;

public interface UserService {
    PageInfo<User> queryUsers(Page page);
}
