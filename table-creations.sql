-- DROP DATABASE MusicShop;
CREATE DATABASE MusicShop;

-- Albums Table
#DROP TABLE Albums;
CREATE TABLE Albums (
    album_id INT PRIMARY KEY,
    title VARCHAR(255),
    artist VARCHAR(255),
    genre VARCHAR(100),
    price DECIMAL(10, 2),
    stock_quantity INT
);

-- Songs Table
-- DROP TABLE Songs;
CREATE TABLE Songs (
    song_id INT PRIMARY KEY,
    title VARCHAR(255),
    artist VARCHAR(255),
    album_id INT,
    duration TIME,
    track_number INT,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

-- Customers Table
-- DROP TABLE Customers;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    phone VARCHAR(20)
);

-- Orders Table
-- DROP TABLE Orders;
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- OrderItems Table
-- DROP TABLE OrderItems;
CREATE TABLE OrderItems (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    album_id INT,
    quantity INT,
    price_per_unit DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);
