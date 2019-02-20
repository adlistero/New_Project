USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);


CREATE TABLE categories(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 category_name VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE ads_categories(
   category_id INT UNSIGNED NOT NULL,
   ad_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (category_id) REFERENCES categories (id),
 FOREIGN KEY (ad_id) REFERENCES ads(id)
);

ALTER TABLE users
ADD UNIQUE (username);

ALTER TABLE users
ADD UNIQUE (email);




