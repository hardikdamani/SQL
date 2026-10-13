-- Session 1
-- Task 1. - Done in class

-- Task 2.
CREATE DATABASE music_streaming_app ;
USE music_streaming_app;
CREATE TABLE playlists (
playlists_id INT,
Name VARCHAR(20),
Created_by VARCHAR(20)
);

-- Task 3.
INSERT INTO playlists VALUES
(101, "Song A", "Badshah"),
(102, "Song B", "Honey Singh"),
(103, "Song C", "Arjit Singh");

-- Task 4.

SELECT * FROM playlists;
SELECT *
FROM playlists
where Created_by = "Badshah";

-- Task 5.

/*
### Difference Between Table, Row, and Column in SQL (Using Zomato Example)

In SQL, data is stored in **tables**. A table is like an Excel sheet that contains related information.

#### 1. Table

A **table** is a collection of data organized into rows and columns.

**Example:** A Zomato database may have a table called **Orders** that stores information about food orders.

| Order_ID | Customer_Name | Restaurant | Amount |
| -------- | ------------- | ---------- | ------ |
| 101      | Rahul         | Pizza Hut  | 450    |
| 102      | Priya         | McDonald's | 300    |
| 103      | Amit          | Domino's   | 550    |

Here, **Orders** is the table.

#### 2. Row

A **row** represents a single record in a table.

**Example:** The row

| 101 | Rahul | Pizza Hut | 450 |

contains all the information about one specific order placed by Rahul.

#### 3. Column

A **column** represents a particular type of information stored for every record.

In the Orders table:

* **Order_ID** is a column.
* **Customer_Name** is a column.
* **Restaurant** is a column.
* **Amount** is a column.

Each column stores one category of data for all orders.

### Summary

* **Table** = Complete collection of related data (e.g., Orders table).
* **Row** = One individual record (e.g., Rahul's order).
* **Column** = One specific field of information (e.g., Customer_Name or Amount).

Therefore, in a Zomato-like application, customer orders are stored in a table, each order is represented by a row, and details such as Order_ID, Customer_Name, Restaurant, and Amount are stored in columns.
*/

-- Session 3
-- Task 1.
DROP TABLE fav_playlists;
CREATE TABLE fav_playlists (
Artist_name Varchar(20),
Song_name VARCHAR(20),
Duration INT
);

INSERT INTO fav_playlists
VALUES
("Arjit singh","Song A", 1.30 );

-- Task 2.

INSERT INTO fav_playlists VALUES
("Badshah", "Song B", 1.56),
("Diljit", "Song C", 2.30),
("Aditya", "Song D", 1.00);

-- Task 3.

UPDATE fav_playlists
SET
Artist_name = "Arijit Singh"
WHERE Song_name = "Song A";

-- Task 4.

DELETE FROM fav_playlists
WHERE Duration < 1.56;

-- Task 5. - Not done in class yet.



-- Session 2.
-- Task 1. - Done in class.

-- Task 2.

CREATE DATABASE foodie_app;
USE foodie_app;

-- Task 3.

CREATE TABLE restaurants (
id tinyint,
name VARCHAR(40),
cuisine VARCHAR(40),
rating FLOAT,
location VARCHAR(100)
);

-- Task 4.

CREATE TABLE Flipkart_style_APP (
User_Id INT,
Username VARCHAR(100),
Email VARCHAR(100),
Phone_Number BIGINT,
Created_at DATETIME
);

-- Task 5.

USE qwerty;

CREATE TABLE Students (
    student_id INT
    student_name VARCHAR(50)
    age INT
);

CREATE TABLE Students (
    student_id INT,
    student_name VARCHAR(50),
    age INT
);


-- Session 4.
-- Task 1.

USE music_streaming_app;
CREATE TABLE MusicPlaylist1  (
    id TINYINT,
    Artist_name VARCHAR(20),
    Song_name VARCHAR(30),
    Duration FLOAT,
    Genre VARCHAR(20)
);

INSERT INTO MusicPlaylist1 VALUES
(1,"Badshah", "Song A", 1.56, "Romantic"),
(2,"Diljit", "Song B", 2.30, "Action"),
(3,"Aditya", "Song C", 1.00, "Horror"),
(4,"Diljit", "Song D", 2.30, "Comedy"),
(5,"Aditya", "Song E", 1.00, "Horror");

SELECT * FROM MusicPlaylist1;

-- Task 2.

SELECT Song_name , Artist_name FROM MusicPlaylist1 LIMIT 3;

-- Task 3.

CREATE TABLE FoodOrders (
id INT,
restaurant VARCHAR(40),
food_item VARCHAR(40),
order_date date
);

INSERT INTO FoodOrders VALUES
(1, "McDonald's", "Burger", "2026-07-01"),
(2, "Domino's", "Pizza", "2026-07-02"),
(3, "McDonald's", "Fries", "2026-07-03"),
(4, "KFC", "Chiken", "2026-07-04"),
(5, "Domino's", "Garlic Bread", "2026-07-05");

SELECT DISTINCT restaurant FROM FoodOrders;

-- Task 4.

SELECT food_item AS 'Dish', 
		order_date AS 'Date Ordered' 
FROM FoodOrders;

-- Task 5.

SELECT DISTINCT food_item, restaurant
FROM FoodOrders
LIMIT 2;


-- Session 5.
-- Task 1.

USE foodie_app;

-- Create Restaurants Table
CREATE TABLE Restaurants1 (
    id INT,
    name VARCHAR(100),
    cuisine VARCHAR(50),
    rating DECIMAL(2,1),
    city VARCHAR(50)
);

INSERT INTO Restaurants1 VALUES
(1, 'Spice Garden', 'Indian', 4.5, 'Ahmedabad'),
(2, 'Dragon Wok', 'Chinese', 4.2, 'Mumbai'),
(3, 'Pizza Palace', 'Italian', 4.7, 'Delhi'),
(4, 'Taco Town', 'Mexican', 4.1, 'Bangalore'),
(5, 'Royal Thali', 'Gujarati', 4.8, 'Surat');

SELECT * FROM Restaurants1;

-- Task 2.

SELECT NAME , RATING , CITY FROM Restaurants1
WHERE RATING > 4 AND CITY IN ("Ahmedabad" , "Surat");

-- Task 3.

SELECT NAME FROM Restaurants1
WHERE NAME LIKE "S%";

-- Task 4.

SELECT * FROM Restaurants1
WHERE RATING BETWEEN 3.5 AND 4.5;

-- Task 5.

SELECT * FROM Restaurants1
WHERE CUISINE IN ("Chinese", "Indian", "Mexican");


-- Session 6.
-- Task 1.


CREATE TABLE products (
    id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price FLOAT
);

INSERT INTO products VALUES
(1, 'Samsung Galaxy M14', 'Mobile', 12999.99),
(2, 'Boat Rockerz 450', 'Headphones', 1499.50),
(3, 'HP Laptop 15s', 'Laptop', 45999.75),
(4, 'Mi Smart Watch', 'Wearable', 2999.25),
(5, 'Dell Inspiron 14', 'Laptop', 52999.95),
(6, 'Realme Narzo 70', 'Mobile', 17999.80),
(7, 'JBL Flip 6', 'Speaker', 8999.60);

SELECT *
FROM products
ORDER BY price ASC;

-- Task 2.

SELECT * FROM products
ORDER BY price DESC
LIMIT 5;

-- Task 3.

USE music_streaming_app;

CREATE TABLE movies (
    id INT ,
    title VARCHAR(40),
    release_year INT,
    rating FLOAT
);

INSERT INTO movies VALUES
(1, 'Inception', 2010, 8.8),
(2, 'Interstellar', 2014, 8.7),
(3, 'Dune', 2021, 8.0),
(4, 'Oppenheimer', 2023, 8.9),
(5, 'Avatar: The Way of Water', 2022, 7.8),
(6, 'Top Gun: Maverick', 2022, 8.3),
(7, 'The Batman', 2022, 7.9),
(8, 'Mission Impossible: Dead Reckoning', 2023, 8.1);

SELECT *
FROM movies
ORDER BY release_year DESC, rating DESC;

-- Task 4.

USE foodie_app;
SELECT * FROM RESTAURANTS1
ORDER BY NAME ASC
LIMIT 10;

-- Task 5.

USE MUSIC_STREAMING_APP;

CREATE TABLE songs (
    id INT,
    song_name VARCHAR(100),
    artist VARCHAR(100),
    play_count INT,
    date_added DATE
);

INSERT INTO songs VALUES
(1, 'Brown Munde', 'AP Dhillon', 50000, '2024-01-10'),
(2, 'Excuses', 'AP Dhillon', 75000, '2024-03-15'),
(3, 'Kesariya', 'Arijit Singh', 75000, '2024-05-20'),
(4, 'Heeriye', 'Arijit Singh', 60000, '2024-02-18'),
(5, 'Pasoori', 'Ali Sethi', 90000, '2024-04-05'),
(6, 'Husn', 'Anuv Jain', 75000, '2024-06-01');

SELECT *
FROM songs
ORDER BY play_count DESC, date_added DESC
LIMIT 3;

-- Session 7.
-- Task 1.

USE PHD_LTD;

CREATE TABLE Orders (
    order_id INT,
    user_name VARCHAR(50),
    total_amount FLOAT,
    order_date DATE
);

INSERT INTO Orders VALUES
(1, 'Rahul', 1500.50, '2026-07-01'),
(2, 'Priya', 2200.00, '2026-07-02'),
(3, 'Amit', NULL, '2026-07-03'),
(4, 'Neha', 875.75, '2026-07-04'),
(5, 'Karan', 3100.25, '2026-07-05');

SELECT * FROM Orders;

-- Task 2.

SELECT user_name, COUNT(*) AS order_count FROM Orders GROUP BY user_name;

-- Task 3.

SELECT AVG(total_amount) AS avg_amount FROM Orders;

-- Task 4.

SELECT MAX(TOTAL_AMOUNT), MIN(TOTAL_AMOUNT) FROM ORDERS
ORDER BY TOTAL_AMOUNT DESC
LIMIT 2;

-- Task 5.

SELECT SUM(TOTAL_AMOUNT) FROM ORDERS;


-- Session 8.
-- Task 1.

CREATE TABLE Orders1 (
    order_id INT,
    user_id INT,
    payment_method VARCHAR(20),
    amount FLOAT
);

INSERT INTO Orders1 VALUES
(1, 101, 'UPI',    550.00),
(2, 102, 'Card',   1200.50),
(3, 103, 'Wallet', 300.75),
(4, 101, 'COD',    850.00),
(5, 104, 'UPI',    1500.00),
(6, 105, 'Card',   950.25),
(7, 102, 'Wallet', 450.00),
(8, 106, 'COD',    700.50);

SELECT * FROM Orders1;

-- Task 2.

SELECT payment_method, COUNT(*) AS ORDER_COUNT FROM orders1
GROUP BY payment_method;

-- Task 3.

SELECT user_id, SUM(amount)  AS Total_spend FROM Orders1
GROUP BY user_id;

-- Task 4.

SELECT payment_method, AVG(AMOUNT) AS AVG_ORDER_AMOUNT FROM ORDERS1
GROUP BY payment_method
HAVING AVG(AMOUNT) > 300;

-- Task 5.

-- WHERE

-- WHERE Clause
-- WHERE filters individual rows BEFORE grouping.

-- Example:
-- Show only those orders where the amount is greater than 500.

SELECT *
FROM Orders1
WHERE amount > 500;

-- Explanation:
-- The WHERE clause checks each row separately.
-- Only rows having amount greater than 500 are returned.
-- Aggregate functions like SUM(), AVG(), COUNT() cannot be used directly in WHERE.



-- HAVING

-- HAVING Clause
-- HAVING filters groups AFTER grouping has been performed.

-- Example:
-- Show only those payment methods whose average order amount is greater than 500.

SELECT
    payment_method,
    AVG(amount) AS avg_amount
FROM Orders
GROUP BY payment_method
HAVING AVG(amount) > 500;

-- Explanation:
-- First, rows are grouped by payment_method.
-- Then AVG(amount) is calculated for each group.
-- HAVING filters the groups based on the aggregate value.
-- HAVING is commonly used with SUM(), AVG(), COUNT(), MIN(), and MAX().


-- KEY DIFFERENCE

-- Key Difference

-- WHERE filters rows before GROUP BY.
-- HAVING filters groups after GROUP BY.

-- WHERE Example:
SELECT * 
FROM Orders
WHERE amount > 500;

-- HAVING Example:
SELECT payment_method, COUNT(*) AS total_orders
FROM Orders
GROUP BY payment_method
HAVING COUNT(*) > 1;

-- Session 9.
-- Task 1.


CREATE TABLE restaurants2 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);


CREATE TABLE dishes (
    id INT PRIMARY KEY,
    restaurant_id INT,
    dish_name VARCHAR(50),
    price DECIMAL(8,2),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants2(id)
);


INSERT INTO restaurants2 VALUES
(1, 'Spice Villa', 'Ahmedabad'),
(2, 'Pizza Hub', 'Surat'),
(3, 'Food Palace', 'Vadodara');


INSERT INTO dishes  VALUES
(101, 1, 'Paneer Butter Masala', 250.00),
(102, 1, 'Veg Biryani', 180.00),
(103, 1, 'Butter Naan', 40.00),

(104, 2, 'Margherita Pizza', 300.00),
(105, 2, 'Farmhouse Pizza', 450.00),
(106, 2, 'Garlic Bread', 150.00),

(107, 3, 'Masala Dosa', 120.00),
(108, 3, 'Idli Sambhar', 90.00),
(109, 3, 'Filter Coffee', 60.00);


SELECT * FROM restaurants2;
SELECT * FROM dishes;

-- Task 2.

SELECT
    d.dish_name,
    d.price,
    r.name AS restaurant_name,
    r.city
FROM dishes d
INNER JOIN restaurants2 r
ON d.restaurant_id = r.id;

-- Task 3.

SELECT
    r.id,
    r.name AS restaurant_name,
    r.city,
    d.dish_name,
    d.price
FROM restaurants2 r
LEFT JOIN dishes d
ON r.id = d.restaurant_id;

-- Task 4.

SELECT d.dish_name, id , name FROM Restaurants as r
RIGHT JOIN dishes as d
ON r.id = d.restaurant_id;

-- Task 5.

/*
A LEFT JOIN returns
All records from the left table (playlists).
Matching records from the right table (songs).
NULL values if there is no matching song.
*/

SELECT s.song_id, s.song_name,s.playlist_id,playlist_name
FROM playlist AS  p
LEFT JOIN songs AS s
ON p.playlist_id = s.playlist_id;


-- Session 10.
-- Task 1.

USE music_streaming_app;
CREATE TABLE influencers(
id INT PRIMARY KEY,
name VARCHAR(20)
);

CREATE TABLE collaborations(
id INT PRIMARY KEY,
influencer1_id INT,
influencer2_id INT,
collab_date DATE,
FOREIGN KEY (influencer1_id) REFERENCES influencers(id),
FOREIGN KEY (influencer2_id) REFERENCES influencers(id)
);

INSERT INTO influencers VALUES
(1,"Aman Sharma"),
(2,"Priya Verma"),
(3,"Neha Soni"),
(4,"Karan Mehta"),
(5,"Ramesh Shah");

INSERT INTO collaborations VALUES
(1,1,2,'2025-01-15'),
(2,2,3,'2025-02-10'),
(3,1,4,'2025-05-13'),
(4,3,4,'2025-07-19'),
(5,2,4,'2025-10-05');

SELECT i1.name AS influencer_name, i2.name AS collaboration_partner, c.collab_date FROM influencers i1
LEFT JOIN collaborations c
ON i1.id = c.influencer1_id
LEFT JOIN influencers i2
ON c.influencer2_id = i2.id 
UNION
SELECT i2.name AS influencer_name, i1.name AS collaboration_partner, c.collab_date FROM influencers i2
LEFT JOIN collaborations c
ON i2.id = c.influencer2_id
LEFT JOIN influencers i1
ON c.influencer1_id = i1.id ;

-- Task 2.

CREATE TABLE Playlists2(
id INT PRIMARY KEY,
user_id INT,
playlist_name VARCHAR(100),
parent_playlist_id INT,
FOREIGN KEY (parent_playlist_id) REFERENCES Playlists2(id)
);

INSERT INTO Playlists2 VALUES
(1, 101, 'Music', NULL),
(2, 101, 'Pop Songs', 1),
(3, 101, 'Rock Hits', 1),
(4, 102, 'Workout', NULL),
(5, 102, 'Gym Mix', 4);

SELECT p1.playlist_name AS playlist, p2.playlist_name AS parent_playlist
FROM Playlists2 p1
LEFT JOIN Playlists2 p2
ON p1.parent_playlist_id = p2.id;

-- Task 3.

USE foodie_app;
CREATE TABLE Users1 (
    id INT PRIMARY KEY,
    username VARCHAR(100)
);

CREATE TABLE Orders1 (
    id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users1(id)
);

CREATE TABLE Payments (
    id INT PRIMARY KEY,
    order_id INT,
    amount INT,
    FOREIGN KEY (order_id) REFERENCES Orders1(id)
);

INSERT INTO Users1 VALUES
(1, 'Amit'),
(2, 'Sneha'),
(3, 'Rahul'),
(4, 'Priya'),
(5, 'Karan');

INSERT INTO Orders1 VALUES
(101, 1, '2026-01-10'),
(102, 2, '2026-01-15'),
(103, 3, '2026-02-01'),
(104, 1, '2026-02-10');

INSERT INTO Payments VALUES
(1, 101, 1200),
(2, 102, 850),
(3, 103, 500),
(4, 104, 1500);

SELECT u.username,o.order_date,p.amount FROM Users1 u
LEFT JOIN Orders1 o
ON u.id = o.user_id
LEFT JOIN Payments p
ON o.id = p.order_id;

-- Task 4.

CREATE TABLE Restaurants4 (
    id INT PRIMARY KEY,
    restaurant_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Reviews (
    id INT PRIMARY KEY,
    restaurant_id INT,
    review_text VARCHAR(255),
    rating INT,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants4(id)
);

INSERT INTO Restaurants4 VALUES
(1, 'Spice Hub', 'Ahmedabad'),
(2, 'Pizza World', 'Surat'),
(3, 'Food Palace', 'Vadodara');

INSERT INTO Reviews VALUES
(1, 1, 'Excellent food', 5),
(2, 1, 'Nice ambience', 4),
(3, 2, 'Good pizza', 5),
(4, 2, 'Average service', 3),
(5, 3, 'Loved the desserts', 5);

SELECT DISTINCT r.restaurant_name,rv.review_text,rv.rating FROM Restaurants4 r
JOIN Reviews rv
ON r.id = rv.restaurant_id;

-- Explanation:
-- Duplicates occurred because one restaurant can have multiple reviews , causing repeated restaurant records after the JOIN.

-- Task 5.

CREATE TABLE Categories (
    id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE TABLE Products1 (
    id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    price INT,
    FOREIGN KEY (category_id) REFERENCES Categories(id)
);

INSERT INTO Categories VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books');

INSERT INTO Products1 VALUES
(101, 'Laptop', 1, 55000),
(102, 'Smartphone', 1, 25000),
(103, 'T-Shirt', 2, 799),
(104, 'Jeans', 2, 1499),
(105, 'SQL Basics Book', 3, 599);

SELECT p.product_name,c.category_name FROM Products1 p
INNER JOIN Categories c
ON p.category_id = c.id;

SELECT product_name,category_name FROM Products1 p
INNER JOIN Categories c
USING (category_id);

-- Efficiency:
-- JOIN ... ON is generally more flexible and commonly used because it supports different column names and complex join conditions.
-- JOIN ... USING is shorter and easier to read but only works when both tables have the same column name.


-- Session 11.
-- Task 1.

SELECT * FROM RESTAURANTS1;

SELECT id, name, rating, city
FROM Restaurants1
WHERE rating > (
    SELECT AVG(rating)
    FROM Restaurants1
);

-- Task 2.

SELECT
    u.id,
    u.username,
    (
        SELECT COUNT(*)
        FROM Orders1 o
        WHERE o.user_id = u.id
    ) AS total_orders
FROM Users1 u;

-- Task 3.

USE amazon;
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(100),
    genre VARCHAR(50),
    release_year INT
);

INSERT INTO Movies VALUES
(1, 'Avengers: Endgame', 'Action', 2019),
(2, 'Spider-Man: No Way Home', 'Action', 2021),
(3, '3 Idiots', 'Comedy', 2009),
(4, 'KGF Chapter 2', 'Action', 2022),
(5, 'Pushpa', 'Action', 2021),
(6, 'Inception', 'Sci-Fi', 2010),
(7, 'Interstellar', 'Sci-Fi', 2014),
(8, 'Dangal', 'Sports', 2016),
(9, 'Jawan', 'Action', 2023),
(10, 'Pathaan', 'Action', 2023);

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    movie_id INT,
    user_name VARCHAR(50),
    rating INT,
    review_date DATE,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

INSERT INTO Reviews VALUES
(101, 1, 'Rahul', 5, '2026-01-10'),
(102, 2, 'Amit', 4, '2026-01-12'),
(103, 3, 'Priya', 5, '2026-01-15'),
(104, 4, 'Karan', 3, '2026-01-18'),
(105, 5, 'Sneha', 5, '2026-01-20'),
(106, 6, 'Riya', 4, '2026-01-22'),
(107, 7, 'Vikas', 5, '2026-01-25'),
(108, 8, 'Anjali', 2, '2026-01-27'),
(109, 9, 'Jay', 5, '2026-01-29'),
(110, 10, 'Neha', 3, '2026-02-01');

SELECT movie_id, movie_name, genre
FROM Movies
WHERE movie_id IN 
(SELECT movie_id FROM Reviews
WHERE rating = 5);

-- Task 4.

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

INSERT INTO Categories VALUES
(1, 'Electronics'),
(2, 'Fashion'),
(3, 'Books'),
(4, 'Home Appliances'),
(5, 'Sports');

CREATE TABLE Sellers (
    seller_id INT PRIMARY KEY,
    seller_name VARCHAR(50)
);

INSERT INTO Sellers VALUES
(101, 'TechWorld'),
(102, 'FashionHub'),
(103, 'MegaStore'),
(104, 'BookPlanet'),
(105, 'SuperMart');

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    seller_id INT,
    category_id INT,
    FOREIGN KEY (seller_id) REFERENCES Sellers(seller_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

INSERT INTO Products VALUES
(1, 'Laptop', 101, 1),
(2, 'Mobile Phone', 101, 1),
(3, 'Shirt', 102, 2),
(4, 'Novel', 104, 3),
(5, 'Microwave', 103, 4),
(6, 'Football', 103, 5),
(7, 'Headphones', 103, 1),
(8, 'Jeans', 103, 2),
(9, 'Story Book', 103, 3),
(10, 'Refrigerator', 105, 4),
(11, 'Sports Shoes', 105, 5),
(12, 'Tablet', 105, 1);

SELECT seller_name FROM Sellers s
WHERE NOT EXISTS 
(SELECT category_id FROM Categories c
WHERE NOT EXISTS 
(SELECT product_id FROM Products p
WHERE p.seller_id = s.seller_id AND p.category_id = c.category_id)
);


-- Session 12.
-- Task 1.

USE foodie_app;
CREATE TABLE Products3 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    rating DECIMAL(2,1)
);

INSERT INTO Products3 VALUES
(1,'Nike Shoes','Footwear',4999,4.8),
(2,'Samsung Galaxy S25','Mobile',74999,4.7),
(3,'Boat Earbuds','Electronics',1999,4.2),
(4,'Levis Jeans','Clothing',2499,4.6),
(5,'Laptop Bag','Accessories',999,4.4);

WITH TopProducts AS (
SELECT * FROM Products3
WHERE rating > 4.5)

SELECT * FROM TopProducts;

-- Task 2.

CREATE TABLE Restaurants5 (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(100),
    city VARCHAR(50),
    delivery_charge INT
);

INSERT INTO Restaurants5 VALUES
(1,'Dominos','Ahmedabad',40),
(2,'Pizza Hut','Ahmedabad',60),
(3,'Subway','Rajkot',30),
(4,'McDonalds','Surat',25),
(5,'Burger King','Ahmedabad',45);

SELECT * FROM (
SELECT * FROM Restaurants5
WHERE city = 'Ahmedabad'
) AS AhmedabadRestaurants
WHERE delivery_charge < 50;

WITH AhmedabadRestaurants AS
(SELECT * FROM Restaurants5
 WHERE city = 'Ahmedabad')
 
SELECT * FROM AhmedabadRestaurants
WHERE delivery_charge < 50;

-- Task 3.

CREATE TABLE Users2 (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    followers INT
);

INSERT INTO Users2 VALUES
(1,'Amit',2500),
(2,'Priya',5200),
(3,'Rahul',4800),
(4,'Neha',1800),
(5,'Karan',6200);

CREATE TABLE Posts (
    post_id INT PRIMARY KEY,
    title VARCHAR(100),
    likes INT
);

INSERT INTO Posts VALUES
(101,'Travel Reel',4500),
(102,'Food Blog',8000),
(103,'Fitness Tips',6200),
(104,'Nature Photo',3200),
(105,'Coding Tricks',9000);

WITH TopUsers AS (
SELECT user_name AS Name,followers AS Value,'User' AS Type FROM Users2
ORDER BY followers DESC
LIMIT 3
),

TopPosts AS (
SELECT title AS Name,likes AS Value,'Post' AS Type FROM Posts
ORDER BY likes DESC
LIMIT 3
)

SELECT * FROM TopUsers
UNION ALL
SELECT * FROM TopPosts;

-- Task 4.

WITH RECURSIVE Next7Days AS (
SELECT CURDATE() AS booking_date, 1 AS day_no
UNION ALL
SELECT booking_date + INTERVAL 1 DAY, day_no + 1
FROM Next7Days
WHERE day_no < 7
)

SELECT booking_date
FROM Next7Days;

-- Task-5
-- Messy Query
SELECT * FROM (
SELECT * FROM Users2
WHERE followers > 1000
) AS PopularUsers;

-- CTE
WITH PopularUsers AS (
SELECT * FROM Users2
WHERE followers > 1000
)
SELECT * FROM PopularUsers;


-- Session 13
-- Task 1.

CREATE TABLE Playlists3 (
    id INT PRIMARY KEY,
    user_id INT,
    playlist_name VARCHAR(100),
    total_likes INT
);

INSERT INTO Playlists3 VALUES
(1, 101, 'Workout Beats', 850),
(2, 101, 'Morning Chill', 420),
(3, 102, 'Party Hits', 1200),
(4, 102, 'Romantic Songs', 950),
(5, 103, 'LoFi Study', 760),
(6, 103, 'Travel Mix', 760),
(7, 104, 'Old Classics', 500),
(8, 101, 'Road Trip', 650);

-- Task 2.

SELECT user_id,playlist_name,total_likes, 
ROW_NUMBER() OVER(ORDER BY total_likes DESC) AS row1
FROM playlists3;

-- Task 3.

SELECT user_id,playlist_name,total_likes, 
RANK() OVER(ORDER BY total_likes DESC) AS rank1
FROM playlists3;

-- Task 4.

SELECT user_id,playlist_name,total_likes, 
DENSE_RANK() OVER(PARTITION BY user_id ORDER BY total_likes DESC) AS dense_rank1
FROM playlists3;

-- Task 5.

SELECT playlist_name,user_id,total_likes FROM 
(SELECT  playlist_name,user_id,total_likes ,
ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY total_likes DESC) AS row1
FROM playlists3 ) AS Playlist
WHERE row1 <= 2;


-- Session 14.
-- Task 1.

USE foodie_app;
CREATE TABLE Orders2 (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount INT
);

INSERT INTO Orders2 VALUES
(101, 1, '2026-07-01', 450),
(102, 1, '2026-07-05', 320),
(103, 1, '2026-07-10', 600),
(104, 2, '2026-07-02', 280),
(105, 2, '2026-07-08', 500),
(106, 3, '2026-07-03', 700),
(107, 3, '2026-07-09', 650);

-- Task 2.

SELECT order_id,user_id,order_date,total_amount,
LAG(total_amount) OVER ( PARTITION BY user_id ORDER BY order_date) AS pre_amount
FROM Orders2;

-- Task 3.

SELECT order_id,user_id,order_date,total_amount,
LEAD(total_amount) OVER ( PARTITION BY user_id ORDER BY order_date) AS next_amount
FROM Orders2;

-- Task 4.

SELECT order_id,user_id,order_date,total_amount,
SUM(total_amount) 
OVER ( PARTITION BY user_id
        ORDER BY order_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total
FROM Orders2;

-- Task 5.

SELECT order_id,user_id,order_date,total_amount,
SUM(total_amount) 
OVER ( PARTITION BY user_id ORDER BY order_date
	ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
    /
COUNT(*) 
OVER ( PARTITION BY user_id ORDER BY order_date
	ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg
FROM Orders2;


-- Session 15.

-- Session 16.

-- Session 17.

-- Session 18.

-- Session 19.



