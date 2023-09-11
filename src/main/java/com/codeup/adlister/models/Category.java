package com.codeup.adlister.models;

import com.codeup.adlister.dao.Categories;
import com.codeup.adlister.dao.DaoFactory;

public class Category {

    private long id;

    private String name;


    public Category() {
    }

    public Category(String name) {
        this.name = name;
    }

    public Category(long id) {
        this.id = id;
    }
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategoryById(String category_id) {
        return DaoFactory.getCategoriesDao().getCategoryById(category_id);

    }

    public long getIdByCategory(String category) {
        return DaoFactory.getCategoriesDao().getIdByCategory(category);
    }
}
