-- Create the table
CREATE TABLE test_data (
  new_id INT,
  new_cat VARCHAR(255)
);

-- Insert the sample data
INSERT INTO test_data (new_id, new_cat)
VALUES
(100, 'Agni'),
(200, 'Agni'),
(500, 'Dharti'),
(700, 'Dharti'),
(200, 'Vayu'),
(300, 'Vayu'),
(500, 'Vayu');

select * from test_data;

-- Output
-- new_id | new_cat 
-- --------+---------
--     100 | Agni
--     200 | Agni
--     500 | Dharti
--     700 | Dharti
--     200 | Vayu
--     300 | Vayu
--     500 | Vayu
-- (7 rows)

-- aggregate window query
select new_id, new_cat,
Sum(new_id) OVER (Partition BY new_cat Order by new_id),
AVG(new_id) OVER (PARTITION BY new_cat ORDER BY new_id) AS Average, 
COUNT(new_id) OVER (PARTITION BY new_cat ORDER BY new_id) AS Count, 
MIN(new_id) OVER (PARTITION BY new_cat ORDER BY new_id) AS Min,
MAX(new_id) OVER (PARTITION BY new_cat ORDER BY new_id) AS Max
FROM test_data;

-- Output
-- new_id | new_cat | sum  |       average        | count | min | max 
-- --------+---------+------+----------------------+-------+-----+-----
--     100 | Agni    |  100 | 100.0000000000000000 |     1 | 100 | 100
--     200 | Agni    |  300 | 150.0000000000000000 |     2 | 100 | 200
--     500 | Dharti  |  500 | 500.0000000000000000 |     1 | 500 | 500
--     700 | Dharti  | 1200 | 600.0000000000000000 |     2 | 500 | 700
--     200 | Vayu    |  200 | 200.0000000000000000 |     1 | 200 | 200
--     300 | Vayu    |  500 | 250.0000000000000000 |     2 | 200 | 300
--     500 | Vayu    | 1000 | 333.3333333333333333 |     3 | 200 | 500
-- (7 rows)

-- Practice ranking functions
SELECT 
    new_id,
    ROW_NUMBER() OVER (ORDER BY new_id) AS ROW_NUMBER,
    RANK() OVER (ORDER BY new_id) AS RANK,
    DENSE_RANK() OVER (ORDER BY new_id) AS DENSE_RANK,
    PERCENT_RANK() OVER (ORDER BY new_id) AS PERCENT_RANK
FROM test_data;

-- Output
-- new_id | row_number | rank | dense_rank |    percent_rank     
-- --------+------------+------+------------+---------------------
-- 100 |          1 |    1 |          1 |                   0
-- 200 |          2 |    2 |          2 | 0.16666666666666666
-- 200 |          3 |    2 |          2 | 0.16666666666666666
-- 300 |          4 |    4 |          3 |                 0.5
-- 500 |          5 |    5 |          4 |  0.6666666666666666
-- 500 |          6 |    5 |          4 |  0.6666666666666666
-- 700 |          7 |    7 |          5 |                   1
-- (7 rows)

-- Practice analytic functions
SELECT 
    new_id,
    FIRST_VALUE(new_id) OVER (ORDER BY new_id) AS FIRST_VALUE,
    LAST_VALUE(new_id) OVER (ORDER BY new_id) AS LAST_VALUE,
    LEAD(new_id) OVER (ORDER BY new_id) AS LEAD,
    LAG(new_id) OVER (ORDER BY new_id) AS LAG
FROM test_data;

-- Output
-- new_id | first_value | last_value | lead | lag 
-- --------+-------------+------------+------+-----
--     100 |         100 |        100 |  200 |    
--     200 |         100 |        200 |  200 | 100
--     200 |         100 |        200 |  300 | 200
--     300 |         100 |        300 |  500 | 200
--     500 |         100 |        500 |  500 | 300
--     500 |         100 |        500 |  700 | 500
--     700 |         100 |        700 |      | 500
-- (7 rows)
