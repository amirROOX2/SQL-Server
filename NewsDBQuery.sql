USE NewsDB

CREATE TABLE News (
	NewsID INT PRIMARY KEY,
	Title TEXT,
	SubTitle TEXT,
	IsChecked BIT,
	[Date] DATETIME)

CREATE TABLE Categories (
	CategoryID INT PRIMARY KEY,
	CategoryName NVARCHAR(50))

CREATE TABLE CategoryNews (
	CategoryID INT NOT NULL,
	NewsID INT NOT NULL,
	PRIMARY KEY (NewsID, CategoryID),
	FOREIGN KEY (NewsID) REFERENCES News(NewsID),
	FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID))

CREATE TABLE Users (
	UserID INT PRIMARY KEY,
	FirstName NVARCHAR(50),
	LastName NVARCHAR(50),
	City NVARCHAR(50))

CREATE TABLE UserNews (
	NewsID INT NOT NULL,
	UserID INT NOT NULL,
	PRIMARY KEY (NewsID, UserID),
	FOREIGN KEY (NewsID) REFERENCES News(NewsID),
	FOREIGN KEY (UserID) REFERENCES Users(UserID))

CREATE TABLE Roles (
	RoleID INT PRIMARY KEY,
	RoleName NVARCHAR(50) NOT NULL)

CREATE TABLE UserRoles (
	UserID INT NOT NULL,
	RoleID INT NOT NULL,
	PRIMARY KEY (UserID, RoleID),
	FOREIGN KEY (UserID) REFERENCES Users(UserID),
	FOREIGN KEY (RoleID) REFERENCES Roles(RoleID))