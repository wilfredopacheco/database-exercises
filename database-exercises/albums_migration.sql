USE codeup_test_db;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    name  VARCHAR(50) NOT NULL,
    release_date DATE,
    sales FLOAT UNSIGNED,
    genre VARCHAR(50),
    PRIMARY KEY (id)
);