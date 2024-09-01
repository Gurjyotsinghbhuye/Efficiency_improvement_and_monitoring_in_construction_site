
--sp_help @objname =  N'stage_projects'; 

alter table Stage_projects
add constraint chk_dates CHECK (enddate >= startdate) 


--UPDATE Stage_projects
--SET projectManagerFirstName = 'Barnabe'  
--  ,projectManagerLastName = 'Segeswoeth',
--  TotalBudget = 160000
--WHERE projectid = 1107650583;         

select * from stage_employees_data
select * from Stage_projects
select * from Stage_projects
select * from stage_employees

update Stage_projects
set projectid = 0607953753
where totalbudget = 220000

select * from Stage_projects p join 
stage_employees_data e on p.ProjectID = e.ProjectID


--select  RIGHT(REPLICATE('0', 10) + ProjectID, 10),LEN(ProjectID) from stage_employees
--UPDATE Stage_projects
--SET ProjectID = RIGHT(REPLICATE('0', 10) + ProjectID, 10)
--WHERE LEN(ProjectID) < 10 and ProjectID = 318613239

select * from Stage_projects
select * from stage_employees


create view reportView as
select projectname,TotalBudget,StartDate,enddate,
p.ProjectID,EmployeeID,EmployeeName,position,HoursWorked,DailyWage,Attendance,
cast(dailywage as int) * Attendance as [Total Weekly Payment]
,'8' as [Total Working Hours]
,'5' as [Total Working Days]
from Stage_projects p left join 
stage_employees e on p.ProjectID = e.ProjectID  

update stage_employees
set hoursworked = 0
where attendance =0

select * from reportView