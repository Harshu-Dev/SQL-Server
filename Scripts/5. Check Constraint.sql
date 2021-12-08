--CHECK constraint
--constraint folder->new constraint->check constraint-> Expression-> age condition

Select * from tblPerson
delete from tblPerson where ID = 4
insert into tblPerson values(4, 'sara', 's@s.com', 2, 10)

--Drop CK constraint 
Alter table tblperson
Drop constraint CK_tblperson_Age

-- add constraint
Alter table tblperson
add constraint CK_tblperson_Age Check( Age > 0 AND Age < 150)