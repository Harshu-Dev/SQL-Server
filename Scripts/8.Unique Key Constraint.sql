--Unique Key Constraint
--Step1:
select * from tblperson
--Adding Unique Key Constraint in this table graphically in email column

--Step2:
Alter table tblperson
add constraint UQ_tblperson_email unique(email)

--Step3:
insert into tblPerson values (1,'ABC','a@a.com',1,20)
insert into tblPerson values (2,'XYZ','a@a.com',1,20)--change the id and name shows violation error

--Step4:
Alter table tblperson
drop constraint UQ_tblperson_email
insert into tblPerson values (1,'ABC','a@a.com',1,20)
insert into tblPerson values (2,'XYZ','a@a.com',1,20)--the changes comes in the table