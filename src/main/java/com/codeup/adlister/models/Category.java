package com.codeup.adlister.models;

import com.codeup.adlister.dao.Categories;

public class Category {

    private long id;

    private String name;

    public Category() {
    }

    public Category(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
