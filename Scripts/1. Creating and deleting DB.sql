--To Create a database using a Query
Create Database Sample2

--Right click on database->files->copy link->paste on run window that shows
--.MDF file-Data File(actual data)
--.LDF file-Transaction Log File(used to recover the database)

--TO alter database - Alter database dbname Modify Name = New dbname
Alter database Sample2 Modify Name = Sample3

--Alternatively Execute sp_renameDB'OldDBname','NewDBname'
 sp_renameDB 'Sample3','Sample4'

 Drop Database Sample4 --Both ldf and mdf files are deleted
 --can't drop db'newdb' because currently in use -->open in 2 ssms
 --Roll back all incomplete transactions 
 -- System DB can't delete