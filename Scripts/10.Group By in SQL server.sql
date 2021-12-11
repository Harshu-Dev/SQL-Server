--Group By in SQL server
--Step1:
Select * from tblPerson
select sum(ID) from tblPerson
select Min(ID) from tblPerson
select MAX(ID) from tblPerson
--Step2:
select Name, sum(ID) AS Num 
from tblPerson
Group By Name

select Name, sum(ID) AS Num 
from tblPerson-- error to use group by

--Step3:
select Name, GenderID sum(ID) AS Num 
from tblPerson
Group By Name, GenderID
Order by Name

