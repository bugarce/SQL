DECLARE @FirstName NVARCHAR(50)
SET @FirstName = 'Antonio'


SELECT @FirstName AS FIRSTNAME,LastName
FROM [Student]
GO

DECLARE @MyTable TABLE
(StudentID INT,StudentName NVARCHAR(50),DateOfBirth DATE)

INSERT INTO @MyTable
SELECT Student.ID,Student.FirstName,Student.DateOfBirth FROM DBO.Student
WHERE Student.Gender = 'F'

SELECT *
FROM @MyTable
GO

CREATE TABLE #MySecTable
(LastName NVARCHAR(50),EnrollDate DATE)

INSERT INTO #MySecTable
SELECT Student.LastName,Student.EnrolledDate
FROM DBO.Student
WHERE Student.Gender = 'M' AND Student.FirstName LIKE 'A%' AND LEN(Student.LastName) = 7

SELECT * FROM #MySecTable
GO

CREATE TABLE #MyTHIRDTABLE
(FirstName NVARCHAR(50),LastName NVARCHAR(50))

INSERT INTO #MyTHIRDTABLE
SELECT Teacher.FirstName,Teacher.LastName
FROM DBO.Teacher
WHERE LEN(Teacher.FirstName) < 5 AND LEFT(Teacher.FirstName,3) = LEFT(Teacher.LastName,3)

SELECT * FROM #MyTHIRDTABLE
GO