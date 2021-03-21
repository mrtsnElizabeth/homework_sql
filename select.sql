USE AdventureWorks2019;
GO

SELECT * 
FROM HumanResources.Department
WHERE GroupName LIKE ('%Research%')
ORDER BY DepartmentId DESC;
GO

SELECT BusinessEntityId, JobTitle, BirthDate, Gender
FROM HumanResources.Employee
WHERE NationalIdNumber > 500000000 AND NationalIdNumber < 1000000000;
GO

SELECT BusinessEntityId, JobTitle, Gender,
YEAR(BirthDate) as year
FROM HumanResources.Employee
WHERE YEAR(BirthDate) BETWEEN 1980 AND 1990;
GO

SELECT BusinessEntityId, ShiftId,
COUNT (*) as count
FROM HumanResources.EmployeeDepartmentHistory
GROUP BY BusinessEntityId, ShiftId
HAVING COUNT (*)>=2;
GO