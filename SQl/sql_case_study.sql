CREATE TABLE Orders (
  customer_id INT,
  order_date DATE,
  item VARCHAR(225),
  quality INT,
  price INT
);


INSERT INTO Orders (customer_id, order_date, item, quality, price)
  Values 
  (10330, '1999-06-30', 'Pogo stick', 1, 28.00),
    (10101, '1999-06-30', 'Raft', 1, 58.00),
    (10298, '1999-07-01', 'Skateboard', 1, 33.00),
    (10101, '1999-07-01', 'Life Vest', 4, 125.00),
    (10299, '1999-07-06', 'Parachute', 1, 1250.00),
    (10339, '1999-07-27', 'Umbrella', 1, 4.50),
    (10449, '1999-08-13', 'Unicycle', 1, 180.79),
    (10439, '1999-08-14', 'Ski Poles', 2, 25.50),
    (10101, '1999-08-18', 'Rain Coat', 1, 18.30),
    (10449, '1999-09-01', 'Snow Shoes', 1, 45.00),
    (10439, '1999-09-18', 'Tent', 1, 88.00),
    (10298, '1999-09-19', 'Lantern', 2, 29.00),
    (10410, '1999-10-28', 'Sleeping Bag', 1, 89.22),
    (10438, '1999-11-01', 'Umbrella', 1, 6.75),
    (10438, '1999-11-02', 'Pillow', 1, 8.50),
    (10298, '1999-12-01', 'Helmet', 1, 22.00),
    (10449, '1999-12-15', 'Bicycle', 1, 380.50),
    (10449, '1999-12-22', 'Canoe', 1, 280.00),
    (10101, '1999-12-30', 'Hoola Hoop', 3, 14.75),
    (10330, '2000-01-01', 'Flashlight', 4, 28.00),
    (10101, '2000-01-02', 'Lantern', 1, 16.00),
    (10299, '2000-01-18', 'Inflatable Mattress', 1, 38.00),
    (10438, '2000-01-18', 'Tent', 1, 79.99),
    (10413, '2000-01-19', 'Lawnchair', 4, 32.00),
    (10410, '2000-01-30', 'Unicycle', 1, 192.50),
    (10315, '2000-02-02', 'Compass', 1, 8.00),
    (10449, '2000-02-29', 'Flashlight', 1, 4.50),
    (10101, '2000-03-08', 'Sleeping Bag', 2, 88.70),
    (10298, '2000-03-18', 'Pocket Knife', 1, 22.38),
    (10449, '2000-03-19', 'Canoe paddle', 2, 40.00),
    (10298, '2000-04-01', 'Ear Muffs', 1, 12.50),
    (10330, '2000-04-19', 'Shovel', 1, 16.75);

select * from orders;

-- Output
--  customer_id | order_date |        item         | quality | price 
-- -------------+------------+---------------------+---------+-------
--        10330 | 1999-06-30 | Pogo stick          |       1 |    28
--        10101 | 1999-06-30 | Raft                |       1 |    58
--        10298 | 1999-07-01 | Skateboard          |       1 |    33
--        10101 | 1999-07-01 | Life Vest           |       4 |   125
--        10299 | 1999-07-06 | Parachute           |       1 |  1250
--        10339 | 1999-07-27 | Umbrella            |       1 |     5
--        10449 | 1999-08-13 | Unicycle            |       1 |   181
--        10439 | 1999-08-14 | Ski Poles           |       2 |    26
--        10101 | 1999-08-18 | Rain Coat           |       1 |    18
--        10449 | 1999-09-01 | Snow Shoes          |       1 |    45
--        10439 | 1999-09-18 | Tent                |       1 |    88
--        10298 | 1999-09-19 | Lantern             |       2 |    29
--        10410 | 1999-10-28 | Sleeping Bag        |       1 |    89
--        10438 | 1999-11-01 | Umbrella            |       1 |     7
--        10438 | 1999-11-02 | Pillow              |       1 |     9
--        10298 | 1999-12-01 | Helmet              |       1 |    22
--        10449 | 1999-12-15 | Bicycle             |       1 |   381
--        10449 | 1999-12-22 | Canoe               |       1 |   280
--        10101 | 1999-12-30 | Hoola Hoop          |       3 |    15
--        10330 | 2000-01-01 | Flashlight          |       4 |    28
--        10101 | 2000-01-02 | Lantern             |       1 |    16
--        10299 | 2000-01-18 | Inflatable Mattress |       1 |    38
--        10438 | 2000-01-18 | Tent                |       1 |    80
--        10413 | 2000-01-19 | Lawnchair           |       4 |    32
--        10410 | 2000-01-30 | Unicycle            |       1 |   193
--        10315 | 2000-02-02 | Compass             |       1 |     8
--        10449 | 2000-02-29 | Flashlight          |       1 |     5
--        10101 | 2000-03-08 | Sleeping Bag        |       2 |    89
--        10298 | 2000-03-18 | Pocket Knife        |       1 |    22
--        10449 | 2000-03-19 | Canoe paddle        |       2 |    40
--        10298 | 2000-04-01 | Ear Muffs           |       1 |    13
--        10330 | 2000-04-19 | Shovel              |       1 |    17
-- (32 rows)

-- 1. Select a list of all items purchased for customerid 10449.
SELECT * FROM orders WHERE customer_id = 10449;
-- customer_id | order_date |     item     | quality | price 
-- -------------+------------+--------------+---------+-------
--        10449 | 1999-08-13 | Unicycle     |       1 |   181
--        10449 | 1999-09-01 | Snow Shoes   |       1 |    45
--        10449 | 1999-12-15 | Bicycle      |       1 |   381
--        10449 | 1999-12-22 | Canoe        |       1 |   280
--        10449 | 2000-02-29 | Flashlight   |       1 |     5
--        10449 | 2000-03-19 | Canoe paddle |       2 |    40
-- (6 rows)

-- 2. Select the avg price of all of the items ordered that were purchased in the month of Dec.
SELECT AVG(price) FROM orders WHERE EXTRACT(MONTH FROM order_date) = 12;
-- avg          
-- ----------------------
--  174.5000000000000000
-- (1 row)

-- 3. For all of the tents that were ordered, What is the price of the lowest tent?
SELECT MIN(price) FROM orders WHERE item = 'Tent';
-- min 
-- -----
--   80
-- (1 row)


-- 4. Select the item, maximum price, and minimum price for each specific item in the table.
SELECT item, MAX(price), MIN(Price) FROM orders GROUP BY item;
-- item         | max  | min  
-- ---------------------+------+------
--  Parachute           | 1250 | 1250
--  Canoe               |  280 |  280
--  Flashlight          |   28 |    5
--  Shovel              |   17 |   17
--  Umbrella            |    7 |    5
--  Ear Muffs           |   13 |   13
--  Inflatable Mattress |   38 |   38
--  Ski Poles           |   26 |   26
--  Life Vest           |  125 |  125
--  Skateboard          |   33 |   33
--  Tent                |   88 |   80
--  Pogo stick          |   28 |   28
--  Snow Shoes          |   45 |   45
--  Helmet              |   22 |   22
--  Bicycle             |  381 |  381
--  Lantern             |   29 |   16
--  Lawnchair           |   32 |   32
--  Raft                |   58 |   58
--  Sleeping Bag        |   89 |   89
--  Rain Coat           |   18 |   18
--  Canoe paddle        |   40 |   40
--  Compass             |    8 |    8
--  Unicycle            |  193 |  181
--  Hoola Hoop          |   15 |   15
--  Pillow              |    9 |    9
--  Pocket Knife        |   22 |   22
-- (26 rows)

-- 5. Display the results if the maximum price for one of the items is greater than 190.00.
SELECT item, MAX(price) FROM orders GROUP BY item Having MAX(price) > 190.00;
-- item    | max  
-- -----------+------
--  Parachute | 1250
--  Canoe     |  280
--  Bicycle   |  381
--  Unicycle  |  193
-- (4 rows)

-- 6. Select the item and price for all of the items where the price is greater than 10.00. Display the results in Ascending order based on the price.
SELECT item, price FROM orders WHERE price > 10.00 ORDER BY price ASC;
-- item         | price 
-- ---------------------+-------
--  Ear Muffs           |    13
--  Hoola Hoop          |    15
--  Lantern             |    16
--  Shovel              |    17
--  Rain Coat           |    18
--  Pocket Knife        |    22
--  Helmet              |    22
--  Ski Poles           |    26
--  Pogo stick          |    28
--  Flashlight          |    28
--  Lantern             |    29
--  Lawnchair           |    32
--  Skateboard          |    33
--  Inflatable Mattress |    38
--  Canoe paddle        |    40
--  Snow Shoes          |    45
--  Raft                |    58
--  Tent                |    80
--  Tent                |    88
--  Sleeping Bag        |    89
--  Sleeping Bag        |    89
--  Life Vest           |   125
--  Unicycle            |   181
--  Unicycle            |   193
--  Canoe               |   280
--  Bicycle             |   381
--  Parachute           |  1250
-- (27 rows)

-- 7. Select the customer_id, order_date, and item unless they are not ‘Snow Shoes’ or ‘Ear Muffs’
Select customer_id, order_date, item From orders Where (item <> 'Snow Shoes') AND (item <> 'Ear Muffs');
-- customer_id | order_date |        item         
-- -------------+------------+---------------------
--        10330 | 1999-06-30 | Pogo stick
--        10101 | 1999-06-30 | Raft
--        10298 | 1999-07-01 | Skateboard
--        10101 | 1999-07-01 | Life Vest
--        10299 | 1999-07-06 | Parachute
--        10339 | 1999-07-27 | Umbrella
--        10449 | 1999-08-13 | Unicycle
--        10439 | 1999-08-14 | Ski Poles
--        10101 | 1999-08-18 | Rain Coat
--        10439 | 1999-09-18 | Tent
--        10298 | 1999-09-19 | Lantern
--        10410 | 1999-10-28 | Sleeping Bag
--        10438 | 1999-11-01 | Umbrella
--        10438 | 1999-11-02 | Pillow
--        10298 | 1999-12-01 | Helmet
--        10449 | 1999-12-15 | Bicycle
--        10449 | 1999-12-22 | Canoe
--        10101 | 1999-12-30 | Hoola Hoop
--        10330 | 2000-01-01 | Flashlight
--        10101 | 2000-01-02 | Lantern
--        10299 | 2000-01-18 | Inflatable Mattress
--        10438 | 2000-01-18 | Tent
--        10413 | 2000-01-19 | Lawnchair
--        10410 | 2000-01-30 | Unicycle
--        10315 | 2000-02-02 | Compass
--        10449 | 2000-02-29 | Flashlight
--        10101 | 2000-03-08 | Sleeping Bag
--        10298 | 2000-03-18 | Pocket Knife
--        10449 | 2000-03-19 | Canoe paddle
--        10330 | 2000-04-19 | Shovel
-- (30 rows)

-- 8. Select the item and price of all items that start with the letters ‘S’ & ‘P’.
Select item, price from orders WHERE (item LIKE '%S%') AND (item LIKE '%P%');
-- item    | price 
-- -----------+-------
--  Ski Poles |    26
-- (1 row)

-- 9. Select the date, item, and price from the table that have a price value ranging from 10.00 to 80.00.
Select order_date, item, price from orders Where price BETWEEN 10.00 AND 80.00;
-- order_date |        item         | price 
-- ------------+---------------------+-------
--  1999-06-30 | Pogo stick          |    28
--  1999-06-30 | Raft                |    58
--  1999-07-01 | Skateboard          |    33
--  1999-08-14 | Ski Poles           |    26
--  1999-08-18 | Rain Coat           |    18
--  1999-09-01 | Snow Shoes          |    45
--  1999-09-19 | Lantern             |    29
--  1999-12-01 | Helmet              |    22
--  1999-12-30 | Hoola Hoop          |    15
--  2000-01-01 | Flashlight          |    28
--  2000-01-02 | Lantern             |    16
--  2000-01-18 | Inflatable Mattress |    38
--  2000-01-18 | Tent                |    80
--  2000-01-19 | Lawnchair           |    32
--  2000-03-18 | Pocket Knife        |    22
--  2000-03-19 | Canoe paddle        |    40
--  2000-04-01 | Ear Muffs           |    13
--  2000-04-19 | Shovel              |    17
-- (18 rows)

-- 10. Select the item and per unit price for each item in the table.
Select item, Sum(price) / Sum(quality) as unit_price from orders Group By item Order By unit_price DESC;
-- item         | unit_price 
-- ---------------------+------------
--  Parachute           |       1250
--  Bicycle             |        381
--  Canoe               |        280
--  Unicycle            |        187
--  Tent                |         84
--  Sleeping Bag        |         59
--  Raft                |         58
--  Snow Shoes          |         45
--  Inflatable Mattress |         38
--  Skateboard          |         33
--  Life Vest           |         31
--  Pogo stick          |         28
--  Pocket Knife        |         22
--  Helmet              |         22
--  Canoe paddle        |         20
--  Rain Coat           |         18
--  Shovel              |         17
--  Lantern             |         15
--  Ski Poles           |         13
--  Ear Muffs           |         13
--  Pillow              |          9
--  Compass             |          8
--  Lawnchair           |          8
--  Umbrella            |          6
--  Flashlight          |          6
--  Hoola Hoop          |          5
-- (26 rows)