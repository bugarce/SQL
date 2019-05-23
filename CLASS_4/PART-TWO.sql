USE [SEDCHome]
GO

CREATE FUNCTION DBO.FN_FormatStudentsName(@StudentId INT)
RETURNS NVARCHAR (2000)
AS
BEGIN

DECLARE @Result NVARCHAR(2000)

SELECT @Result = REPLACE(Student.StudentCardNumber,'sc-','')+'-' + LEFT(Student.FirstName,1)+ '-' + Student.LastName
FROM DBO.Student
WHERE @StudentId = Student.ID

RETURN @Result
END

SELECT *,DBO.FN_FormatStudentsName(Student.ID) AS FUNCTION_COLUMN FROM DBO.Student
GO




