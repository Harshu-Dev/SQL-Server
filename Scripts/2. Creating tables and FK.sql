--Creating tables of tblPerson and tblGender using query or graphically
Use [Sample]
Go

Create Table tblGender
(
  ID int NOT NULL Primary Key,
  Gender nvarchar(50) NOT NULL 
)

--Insert values by select the table right click on edit top 200 rows on both the tables

--Creating a Foreign key constraint tblgender ID is a pk and in tblperson GenderId is a FK
Alter table tblperson add constraint tblperson_GenderID_FK
Foreign key (GenderId) references tblGender (ID)
-- 1 or 2 or 3 is valid values in GenderId 99 is invalid because we gave fk connection