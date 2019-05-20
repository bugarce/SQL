SELECT * FROM STUDENT
WHERE FirstName = 'Antonio'
GO

SELECT * FROM STUDENT
WHERE DateOfBirth > '1999-01-01'
GO

SELECT * FROM Student
WHERE Gender = 'M'
GO

SELECT * FROM Student
WHERE CHARINDEX('T',LastName) = 1
GO

SELECT * FROM Student
WHERE EnrolledDate >= '1998-01-01' AND EnrolledDate < '1998-02-01'
GO

SELECT * FROM Student
WHERE  CHARINDEX('J',LastName) = 1 AND EnrolledDate >= '1998-01-01' AND EnrolledDate < '1998-02-01'
GO

