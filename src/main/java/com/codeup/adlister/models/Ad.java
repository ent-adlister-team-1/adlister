package com.codeup.adlister.models;

import com.codeup.adlister.dao.DaoFactory;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;

    private String contact;

    private String location;

    private String category;

    private long category_id;

    private double price;
    private Category newCategory = new Category();

    public Ad(long id, String title, String categoryId, String description) {
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCategory() {
        return this.category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Ad(long id, long userId, String title, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Ad(long userId, String title, String description) {
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Ad(long userId, String category, String title, String description) {
        this.userId = userId;
        this.category = category;

        this.title = title;
        this.description = description;
    }
    public Ad(long userId, String title, String description, String contact, String location, double price, String category) {

        this.userId = userId;
        this.title = title;
        this.description = description;
        this.contact = contact;
        this.location = location;
        this.price = price;
        this.category = category;
        this.category_id = DaoFactory.getCategoriesDao().getIdByCategory(category);
    }

    public Ad() {

    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setCategory_id(String title) {
    }
}
