package com.my.entity;

import java.util.Date;

public class User {
    private Integer id;
    private String name;
    private String password;
    private Date registTime;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", registTime=" + registTime +
                '}';
    }

    public User() {
    }

    public User(Integer id, String name, String password, Date registTime) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.registTime = registTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getRegistTime() {
        return registTime;
    }

    public void setRegistTime(Date registTime) {
        this.registTime = registTime;
    }
}