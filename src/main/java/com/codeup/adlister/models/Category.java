package com.codeup.adlister.models;

public class Category {
    private long id;
    private String category_name;


    public Category(long id, String category_name) {
        this.id = id;
        this.category_name = category_name;

    }

    public Category(String category_name) {
        this.category_name = category_name;

    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCategoryName() {
        return category_name;
    }

    public void setCategoryName(String category_name) {
        this.category_name = category_name;
    }


}
