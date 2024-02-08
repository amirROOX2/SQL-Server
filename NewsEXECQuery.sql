USE NewsDB
--News
EXEC GetAllNews
EXEC GetNewsByID 5
EXEC AddNews 6, 'Corona disappear', 'Right now', 1, '2018-05-20 12:02:06'
EXEC UpdateNews 1, 'Neymar died.', NULL, '2000-07-20 21:11:59'
EXEC DeleteNews 4

--Categories
EXEC GetAllCategories
EXEC GetCategoriesByID 4
EXEC AddCategories 7, 'Religious'
EXEC UpdateCategories 4, 'Healthcare'
EXEC UpdateCategories 7, 'Music'
EXEC DeleteCategories 5

--CategoryNews
EXEC GetAllCategoryNews
EXEC GetCategoryNewsByID 2
EXEC AddCategoryNews 4, 6
EXEC UpdateCategoryNews 7, 3
EXEC DeleteCategoryNews 3, 5

--Roles
EXEC GetAllRoles
EXEC GetRolesByID 3
EXEC AddRoles 5, 'Producer'
EXEC UpdateRoles 4, 'Speaker'
EXEC DeleteRoles 4

--Users
EXEC GetAllUsers
EXEC GetUsersByID 1
EXEC AddUsers 5, 'Nika', 'Mosavi', 'Mashhad'
EXEC UpdateUsers 4, 'Mohsen', 'Taghavi', 'Karaj'
EXEC DeleteUsers 4

--UserRoles
EXEC GetAllUserRoles
EXEC GetUserRolesByID 3
EXEC AddUserRoles 5, 2
EXEC UpdateUserRoles 5, 5
EXEC DeleteUserRoles 5

--UserNews
EXEC GetAllUserNews
EXEC GetUserNewsByID 2
EXEC AddUserNews 6, 2
EXEC UpdateUserNews 6, 2
EXEC DeleteUserNews 3