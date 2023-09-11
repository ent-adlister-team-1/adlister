package com.codeup.adlister.dao;

import com.codeup.adlister.models.Category;

public interface Categories {
    String getCategoryById(String category_id);

    long getIdByCategory(String category);
}
