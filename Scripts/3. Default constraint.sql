Select * from tblGender
Select * from tblPerson

Insert into tblPerson (ID, Name, Email, GenderID) values (8, 'ram', 'ra@r.com', 1)

-- Default constraint use Alter table
Alter table tblPerson
Add constraint DF_tblPerson_GenderID
Default 3 for GenderID
-- IF we gave new like 1 or null is gaves that value in GenderID no value means take 3 as DF
-- adding a new column with DF value [Alter table add (colname) (datatype) null or not
-- constraint (constraint name)  Default (DF value)

-- Drop constraint
Alter table tblPerson
Drop constraint DF_tblPerson_GenderID
