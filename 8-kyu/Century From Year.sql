-- Introduction
-- The first century spans from the year 1 up to and including the year 100, The second - from the year 101 up to and including the year 200, etc.

-- Task :
-- Given a year, return the century it is in.

-- Input , Output Examples ::
-- centuryFromYear(1705)  returns (18)
-- centuryFromYear(1900)  returns (19)
-- centuryFromYear(1601)  returns (17)
-- centuryFromYear(2000)  returns (20)
-- In SQL, you will be given a table years with a column yr for the year. Return a table with a column century.

-- Hope you enjoy it .. Awaiting for Best Practice Codes

-- Enjoy Learning !!!


SELECT CEIL(yr/100.00) AS century
FROM years