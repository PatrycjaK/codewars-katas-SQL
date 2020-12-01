-- Find the total sum of internal angles (in degrees) in an n-sided simple polygon. N will be greater than 2.


SELECT 180*(n-2) AS res 
FROM angle