select c.Name as CourseName, a.Name as AchivementTypeName
from dbo.Course c
cross join dbo.AchievementType a
GO

select DISTINCT t.FirstName
from dbo.Teacher t
inner join 
dbo.Grade g on t.ID = g.TeacherID
GO

select t.*
from dbo.Teacher t
left join
dbo.Grade g on g.TeacherID = t.ID
where g.TeacherID = null