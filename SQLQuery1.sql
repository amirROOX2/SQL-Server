use StudentsDB

SELECT * FROM Table_Information;
SELECT * FROM Table_Country;


-- #2
SELECT COUNT(DISTINCT Country) AS [Number of Countries] FROM Table_Country;


-- #3
INSERT INTO Table_Information (ID, FName, LName, Country, Score)
VALUES (6, 'Ahmad', 'Mohsen', 3, 14)


UPDATE Table_Information
SET Country = 'Iran' WHERE Country = '1';

UPDATE Table_Information
SET Country = 'UAE' WHERE Country = '2';

UPDATE Table_Information
SET Country = 'USA' WHERE Country = '3';

UPDATE Table_Information
SET Country = 'Brazil' WHERE Country = '4';

UPDATE Table_Information
SET Country = 'Spain' WHERE Country = '5';

DELETE FROM Table_Information WHERE Score < 10;

SELECT * FROM Table_Information;
SELECT * FROM Table_Country;


-- #4
DECLARE @Top3 TABLE (TID INT, TFName NVARCHAR(50), TLName NVARCHAR(50), TCountry NVARCHAR(50), TScore INT)


-- #5
INSERT INTO @Top3 (TID, TFName, TLName, TCountry, TScore)
SELECT TOP 3 ID, FName, LName, Country, Score FROM Table_Information ORDER BY Score DESC;

SELECT * FROM @Top3;