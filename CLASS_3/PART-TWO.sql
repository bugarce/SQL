USE [SEDCHome]
GO

SELECT T.FirstName,T.LastName,
COUNT(G.Grade) AS GRADE_COUNT
FROM [Grade] G
INNER JOIN [Teacher] T ON T.ID = G.TeacherID
GROUP BY T.FirstName,T.LastName
HAVING COUNT(G.Grade) > 200
GO

SELECT T.FirstName,T.LastName,
COUNT(G.Grade) AS GRADES_PER_TEACHER
FROM [Teacher] T
INNER JOIN [Grade] G ON G.TeacherID = T.ID
INNER JOIN [Student] S ON S.ID = G.StudentID
WHERE S.ID < 100
GROUP BY T.FirstName,T.LastName
HAVING COUNT(G.Grade) > 50
GO

SELECT S.FirstName,S.LastName,
COUNT(G.Grade) AS GRADE_COUNT,
MAX(G.Grade) AS MAX_GRADE,
AVG(G.Grade) AS AVG_GRADE
FROM [Grade] G
INNER JOIN [Student] S ON G.StudentID = S.ID
GROUP BY S.FirstName,S.LastName
HAVING MAX(G.Grade) = AVG(G.Grade)
GO

