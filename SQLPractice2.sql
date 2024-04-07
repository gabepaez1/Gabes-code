SELECT * FROM product WHERE P_descript LIKE 'G%';
SELECT v.V_name
FROM vendor v
JOIN product p ON v.V_code = p.V_code
WHERE p.P_descript = 'Silver drill bit';
SELECT P_disPercent
FROM product
WHERE LENGTH(P_disPercent) = 3;
SELECT 
    MAX(P_price) AS max_price,
    MIN(P_price) AS min_price,
    AVG(P_price) AS avg_price
FROM product;
SELECT COUNT(*) AS total_records FROM product;
SELECT 
    *,
    (P_quan * P_price) AS 'Total value'
FROM product;
SELECT 
    *,
    (P_price - (P_price * P_discount)) AS 'Product price after discount'
FROM product;
