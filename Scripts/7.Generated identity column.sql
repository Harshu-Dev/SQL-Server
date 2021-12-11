--How to get last generated identity column value
--Step 1: Create 2 tables
Create Table Test1
(
ID int identity(1,1),
Value nvarchar(20)
)
Create Table Test2
(
ID int identity(1,1),
Value nvarchar(20)
)

--Step 2:Insert values
insert into Test1 Values('X')
Select * from Test1 

--step 3:To see last generated value
Select SCOPE_IDENTITY()--Insert once again it shows 2
select @@IDENTITY

--Step  4:
Create trigger trforinsert on Test1 for insert
as
Begin
 Insert into Test2 Values('YYYY')
End
Select * from Test1 --2 records
Select * from Test2 -- no records

--Step 5:
insert into Test1 Values('X')
Select SCOPE_IDENTITY()--Insert once again it shows 2
select @@IDENTITY
Select * from Test1 --2 records
Select * from Test2

--Step 6:
Insert into Test2 Values('zzz')--in user1
Select SCOPE_IDENTITY()--same conncetion and same scope
select @@IDENTITY--same conncetion and any scope
Select IDENT_CURRENT('Test2')
Insert into Test2 Values('zzz')--in user2