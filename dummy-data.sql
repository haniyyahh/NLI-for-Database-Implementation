-- Insert into Albums table
INSERT INTO Albums (album_id, title, artist, genre, price, stock_quantity)
VALUES
    (1, 'Thriller', 'Michael Jackson', 'Pop', 12.99, 100),
    (2, 'Back in Black', 'AC/DC', 'Rock', 10.99, 80),
    (3, 'The Dark Side of the Moon', 'Pink Floyd', 'Progressive Rock', 14.99, 120);

-- Insert into Songs table
INSERT INTO Songs (song_id, title, artist, album_id, duration, track_number)
VALUES
    (1, 'Billie Jean', 'Michael Jackson', 1, '00:04:54', 1),
    (2, 'Beat It', 'Michael Jackson', 1, '00:04:18', 2),
    (3, 'Back in Black', 'AC/DC', 2, '00:04:15', 1);

-- Insert into Customers table
INSERT INTO Customers (customer_id, name, email, address, phone)
VALUES
    (1, 'John Doe', 'john@example.com', '123 Campbell St, Dallas, USA', '555-1234'),
    (2, 'Jane Smith', 'jane@example.com', '456 Renner St, Houston, USA', '555-5678');

-- Insert into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
VALUES
    (1, 1, '2023-05-10', 25.98),
    (2, 2, '2023-06-05', 18.97);

-- Insert into OrderItems table
INSERT INTO OrderItems (order_item_id, order_id, album_id, quantity, price_per_unit)
VALUES
    (1, 1, 1, 1, 12.99),
    (2, 1, 2, 1, 10.99),
    (3, 2, 3, 1, 14.99);
