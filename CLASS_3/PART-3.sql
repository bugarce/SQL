USE[SEDCHome]
GO

CREATE VIEW vv_StudentGrades
AS
SELECT S.FirstName,S.LastName,
COUNT(G.Grade) AS GRADE_COUNT
FROM [Grade] G
INNER JOIN [Student] S ON S.ID = G.StudentID
GROUP BY S.FirstName,S.LastName
GO

SELECT *
FROM vv_StudentGrades
ORDER BY vv_StudentGrades.GRADE_COUNT DESC
GO


CREATE VIEW vv_StudentGradesDetails
AS
SELECT S.FirstName,S.LastName,
COUNT(C.Name) AS COURSE_COUNT
FROM [Grade] G
INNER JOIN [Student] S ON S.ID = G.StudentID
INNER JOIN [GradeDetails] GD ON GD.GradeID = G.ID
INNER JOIN [AchievementType] AT ON AT.ID = GD.AchievementTypeID
INNER JOIN [Course] C ON C.ID = G.CourseID
WHERE AT.Name = 'Ispit'
GROUP BY S.FirstName,S.LastName
GO

