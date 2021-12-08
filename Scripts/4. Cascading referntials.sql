--Cascading referntial integrity
-- NO action-> default behaviour
--Set default-> delete or update a row with key refernce foriengn key and fk set to default values
--Set NULL->delete or update a row with key refernce foriengn key FK set to NULL
--Cascade-> delete or update a row with key refernce foriengn key , all row connect to FK are also deleted

Select * from tblGender
Select * from tblPerson

Delete from tblGender where ID = 2