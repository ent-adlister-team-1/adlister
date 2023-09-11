package com.codeup.adlister.models;

import com.codeup.adlister.dao.DaoFactory;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
@NoArgsConstructor
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

//    public Ad(long id, String title, String categoryId, String description) {
//    }


    public Ad(long id, long userId, String title, String description, String contact, String location, String category, long categoryId, double price) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.contact = contact;
        this.location = location;
        this.category = category;
        this.category_id = category_id;
        this.price = price;
    }

    public Ad(long id, String title, String description, String contact, String location, double price, String category) {
        this.userId = id;
        this.title = title;
        this.description = description;
        this.contact = contact;
        this.location = location;
        this.category = category;
        this.price = price;
        this.category_id = DaoFactory.getCategoriesDao().getIdByCategory(category);
    }

    @Override
    public String toString() {
        return "Ad{" +
                "id=" + id +
                ", userId=" + userId +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", contact='" + contact + '\'' +
                ", location='" + location + '\'' +
                ", category='" + category + '\'' +
                ", category_id=" + category_id +
                ", price=" + price +
//              ±
                '}';
    }
}
