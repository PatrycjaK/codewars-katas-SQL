-- Clock shows 'h' hours, 'm' minutes and 's' seconds after midnight.

-- Your task is to make 'Past' function which returns time converted to milliseconds.

-- Example:
-- {h: 0, m: 1, s: 1} => res: 61000
-- Input constraints: 0 <= h <= 23, 0 <= m <= 59, 0 <= s <= 59


SELECT (h * 3600000 + m * 60000 + s * 1000) AS res 
FROM past