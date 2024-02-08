USE NewsDB

--News
ALTER PROC GetAllNews
AS
SELECT * FROM News
GO

CREATE PROC GetNewsByID @ID INT
AS
SELECT * FROM News
WHERE NewsID = @ID
GO

CREATE PROC AddNews @ID INT, @Title NVARCHAR(50), @SubTitle NVARCHAR(50), @IsChecked BIT, @Date DATETIME
AS
INSERT INTO News (NewsID, Title, SubTitle, IsChecked, [Date])
	VALUES (@ID, @Title, @SubTitle, @IsChecked, @Date)
GO

CREATE PROC UpdateNews @ID INT, @Title NVARCHAR(50), @SubTitle NVARCHAR(50), @Date DATETIME
AS
UPDATE News
SET Title = @Title, SubTitle = @SubTitle, [Date] = @Date
WHERE NewsID = @ID
GO

CREATE PROC DeleteNews @ID INT
AS
DELETE FROM News
WHERE NewsID = @ID

DELETE FROM CategoryNews
WHERE NewsID = @ID

DELETE FROM UserNews
WHERE NewsID = @ID
GO

--Categories
CREATE PROC GetAllCategories
AS
SELECT * FROM Categories
GO

CREATE PROC GetCategoriesByID @ID INT
AS
SELECT * FROM Categories
WHERE CategoryID = @ID
GO

CREATE PROC AddCategories @ID INT, @CategoryName NVARCHAR(50)
AS
INSERT INTO Categories (CategoryID, CategoryName)
	VALUES (@ID, @CategoryName)
GO

CREATE PROC UpdateCategories @ID INT, @CategoryName NVARCHAR(50)
AS
UPDATE Categories
SET CategoryName = @CategoryName
WHERE CategoryID = @ID
GO

CREATE PROC DeleteCategories @ID INT
AS
DELETE FROM Categories
WHERE CategoryID = @ID

DELETE FROM CategoryNews
WHERE CategoryID = @ID
GO

--CategoryNews
CREATE PROC GetAllCategoryNews
AS
SELECT * FROM CategoryNews
GO

CREATE PROC GetCategoryNewsByID @ID INT
AS
SELECT * FROM CategoryNews
WHERE CategoryID = @ID
GO

ALTER PROC AddCategoryNews @CategoryID INT, @NewsID INT
AS
INSERT INTO CategoryNews (CategoryID, NewsID)
	VALUES (@CategoryID, @NewsID)
GO

CREATE PROC UpdateCategoryNews @CategoryID INT, @NewsID INT
AS
UPDATE CategoryNews
SET CategoryID = @CategoryID
WHERE NewsID = @NewsID
GO

CREATE PROC DeleteCategoryNews @CategoryID INT, @NewsID INT
AS
DELETE FROM CategoryNews
WHERE CategoryID = @CategoryID AND NewsID = @NewsID
GO

--Roles
CREATE PROC GetAllRoles
AS
SELECT * FROM Roles
GO

CREATE PROC GetRolesByID @ID INT
AS
SELECT * FROM Roles
WHERE RoleID = @ID
GO

CREATE PROC AddRoles @RoleID INT, @RoleName NVARCHAR(50)
AS
INSERT INTO Roles (RoleID, RoleName)
	VALUES (@RoleID, @RoleName)
GO

ALTER PROC UpdateRoles @RoleID INT, @RoleName NVARCHAR(50)
AS
UPDATE Roles
SET RoleName = @RoleName
WHERE RoleID = @RoleID
GO

CREATE PROC DeleteRoles @RoleID INT
AS
DELETE FROM Roles
WHERE RoleID = @RoleID
GO

--Users
CREATE PROC GetAllUsers
AS
SELECT * FROM Users
GO

CREATE PROC GetUsersByID @ID INT
AS
SELECT * FROM Users
WHERE UserID = @ID
GO

CREATE PROC AddUsers @UserID INT, @FirstName NVARCHAR(50), @LastName NVARCHAR(50), @City NVARCHAR(50)
AS
INSERT INTO Users(UserID, FirstName, LastName, City)
	VALUES (@UserID, @FirstName, @LastName, @City)
GO

CREATE PROC UpdateUsers @UserID INT, @FirstName NVARCHAR(50), @LastName NVARCHAR(50), @City NVARCHAR(50)
AS
UPDATE Users
SET FirstName = @FirstName, LastName = @LastName, City = @City
WHERE UserID = @UserID
GO

CREATE PROC DeleteUsers @UserID INT
AS
DELETE FROM Users
WHERE UserID = @UserID

DELETE FROM UserRoles
WHERE UserID = @UserID
GO

--UserRoles
CREATE PROC GetAllUserRoles
AS
SELECT * FROM UserRoles
GO

CREATE PROC GetUserRolesByID @ID INT
AS
SELECT * FROM UserRoles
WHERE UserID = @ID
GO

CREATE PROC AddUserRoles @UserID INT, @RoleID INT
AS
INSERT INTO UserRoles (UserID, RoleID)
	VALUES (@UserID, @RoleID)
GO

CREATE PROC UpdateUserRoles @UserID INT, @RoleID INT
AS
UPDATE UserRoles
SET RoleID = @RoleID
WHERE UserID = @UserID
GO

CREATE PROC DeleteUserRoles @UserID INT
AS
DELETE FROM UserRoles
WHERE UserID = @UserID
GO

--UserNews
CREATE PROC GetAllUserNews
AS
SELECT * FROM UserNews
GO

CREATE PROC GetUserNewsByID @ID INT
AS
SELECT * FROM UserNews
WHERE UserID = @ID
GO

CREATE PROC AddUserNews @NewsID INT, @UserID INT
AS
INSERT INTO UserNews (NewsID, UserID)
	VALUES (@NewsID, @UserID)
GO

CREATE PROC DeleteUserNews @NewsID INT
AS
DELETE FROM UserNews
WHERE NewsID = @NewsID
GO