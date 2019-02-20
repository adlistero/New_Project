package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();

    void deleteAd(Long id);

    void editAd(Ad ad);

    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    Ad one(Long id);

    List<Ad> search(String userSearch);

    List <Ad> userAds(int user_id);




}
