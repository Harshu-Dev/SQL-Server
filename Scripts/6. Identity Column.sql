--Identity Column in sql
--It automatically increment the personID column without giving any values in that because we change the identity settings to increment

Select * from dbo.tblPerson1

Insert into tblPerson1  values ('hu')

delete from tblPerson1 where personId = 1 -- delete the 1 st column
-- it doesn't resuse the 1st column

An explicit value for the identity column in table 'tblPerson1'
can only be specified when a column list is used and IDENTITY_INSERT is ON.
-- identity insert on
set IDENTITY_INSERT tblPerson1 ON
Insert into tblPerson1 (PersonId, Name) values (1,'jam')
--Now Ist column with value 1 is executed

delete from tblPerson1
-- next identity value in insert statement

DBCC CHECKIDENT(tblperson1, RESEED, 0)-- reset the values start from 1