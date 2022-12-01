CREATE DATABASE catalog;

CREATE TABLE item (
    id INT PRIMARY KEY,
    genre_id INT,
    author_id INT,
    label_id INT,
    published_date DATE,
    archive BOOLEAN,
    FOREIGN KEY (genre_id) REFERENCES genres(id),
);

CREATE TABLE labels (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    color VARCHAR(255),
);

CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    publisher VARCHAR(255),
    cover_state VARCHAR(255),
    FOREIGN KEY (id) REFERENCES item(id),
);

CREATE TABLE author(
id INT  generate always as identity,
full_name VARCHAR(60),
PRIMARY KEY (id)
);

CREATE TABLE games(
id INT,
player  BOOLEAN,
last_palayed_at DATE,
FOREIGN KEY (id) REFERENCES item(id)
);