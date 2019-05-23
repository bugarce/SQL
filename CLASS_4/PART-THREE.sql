USE [SEDCHome]
GO

CREATE FUNCTION dbo.fn_StudentsWithGrades(@TeacherId INT,@CourseID INT)
RETURNS @MyCustomTable TABLE(StudentFirstName NVARCHAR(100),StudentsLastName NVARCHAR(100),Grade INT,CurrentDate DATE)
AS
BEGIN
INSERT INTO @MyCustomTable
SELECT S.FirstName,S.LastName,G.Grade,G.CreatedDate
FROM [Student] S
JOIN [Grade] G ON G.StudentID = S.ID
JOIN [Teacher] T ON G.TeacherID = T.ID
JOIN [Course] C ON C.ID = G.CourseID
WHERE @TeacherId = T.ID AND  @CourseID = C.ID

RETURN
END

SELECT  dbo.fn_StudentsWithGrades(Teacher.ID,Course.ID) FROM DBO.Student