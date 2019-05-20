select * from Student

select * from Course

select * from Grade

select * from AchievementType

select * from GradeDetails

ALTER TABLE Grade WITH CHECK
ADD CONSTRAINT FK_Grade
FOREIGN KEY (StudentId)
REFERENCES Student (ID)
GO

ALTER TABLE GradeDetails WITH CHECK
ADD CONSTRAINT FK_GRADEDETAILS
FOREIGN KEY (GradeID)
REFERENCES Grade(ID)
GO

