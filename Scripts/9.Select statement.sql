--Select statement
--Step1:
Select * from tblPerson
--Table->script table as-> select to->new query editor window
USE [Sample]
GO

SELECT [ID]
      ,[Name]
      ,[Email]
      ,[GenderID]
      ,[Age]
  FROM [dbo].[tblPerson] -- or FROM [Sample] [dbo].[tblPerson]

GO -- eg: you db name in above is master it will execute fine but without db name it show error

--Step2:
 --TO select particular column use Distinct key word and eliminate duplicates
Select DISTINCT Age from tblPerson
Select DISTINCT GenderID, Age from tblPerson

--Step3:
Select * from tblPerson where Age=10  -- using where get that particular record
Select * from tblPerson where GenderID<>2-- not equal to
Select * from tblPerson where GenderID!=2-- not equal to
Select * from tblPerson where GenderID =1 or GenderID =2 or GenderID =3 --or 
Select * from tblPerson where GenderID IN (1,2,3)
Select * from tblPerson where GenderID BETWEEN 1 AND 2
Select * from tblPerson where Name LIKE'S%'
Select * from tblPerson where Email Not LIKE'%@%'
Select * from tblPerson where Email LIKE'_@_.com'
Select * from tblPerson where Name LIKE '[mst%]'
Select * from tblPerson where Name LIKE '[^mst%]'

--Step4:
Select * from tblPerson where GenderID =1 or GenderID =2 AND Age > 10

--Step5:
Select * from tblPerson order by Name
Select * from tblPerson order by Name DESC, ID ASC
Select top 2 Name, Age from tblPerson
Select top 2 * from tblPerson
Select top 1 Percent * from tblPerson
Select top 50 Percent * from tblPerson
Select * from tblPerson order by ID DESC
Select top 1 * from tblPerson order by ID DESC