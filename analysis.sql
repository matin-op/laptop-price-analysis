USE laptop;
SELECT * FROM laptops;

SELECT count(title) as total_laptops FROM laptops;

SELECT AVG(price) FROM laptops;

SELECT title, price 
FROM laptops
ORDER BY price DESC
LIMIT 5;

SELECT rating, AVG(price)
FROM laptops
GROUP BY rating
ORDER BY rating DESC;

SELECT title, price
FROM laptops
ORDER BY price ASC
LIMIT 5;

SELECT *,
CASE 
  WHEN price < 500 THEN 'Budget'
  WHEN price BETWEEN 500 AND 1000 THEN 'Mid-range'
  ELSE 'Premium'
END as classification
FROM laptops;

SELECT 
    CASE 
        WHEN price < 500 THEN 'Budget'
        WHEN price BETWEEN 500 AND 1000 THEN 'Mid-range'
        ELSE 'Premium'
    END AS category,
    AVG(reviews) AS avg_reviews
FROM laptops
GROUP BY category;

SELECT rating, AVG(reviews) AS avg_reviews
FROM laptops
GROUP BY rating
ORDER BY rating DESC;

with counting as (SELECT *,
CASE 
  WHEN price < 500 THEN 'Budget'
  WHEN price BETWEEN 500 AND 1000 THEN 'Mid-range'
  ELSE 'Premium'
END as classification
FROM laptops)

select COUNT(title) AS count, classification AS category FROM Scounting GROUP BY classification;

