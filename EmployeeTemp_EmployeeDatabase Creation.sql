use EMP

create table Employee
(
 EmployeeId int IDENTITY(1,1) Primary key,
 FirstName varchar(20) Not NULL,
 LastName varchar(20) NOT NULL,
 City varchar(50) NOT NULL,
 State varchar(50) NOT NULL,
 DOB Date NOT NULL
);

Select * from Employee


Insert Into Employee Values ('Ankita','Lande','Akole','Maharashtra','2000-06-17')
Insert Into Employee Values ('Sayli','Kumbhar','Sangli','Maharashtra','2001-04-21')
Insert Into Employee Values ('Prashant','Suryawanshi','Pune','Maharashtra','1995-07-24')
Insert Into Employee Values ('Sherya','Bhosle','Lonavala','Panjab','2002-06-27')
Insert Into Employee Values ('Pranali','Krushna','Amritsar','Chandigad','2001-06-11')
Insert Into Employee Values ('Neena ','Nayer','Latur','Aasam','1992-03-17')
Insert Into Employee Values ('Steven ','King ','Kerala','Kerala','1994-06-17')
Insert Into Employee Values ('Ganesh','Kale','Jalgoan','Gujrat','2000-09-07')
Insert Into Employee Values ('Nikhil','Nile','Beed','Jaipur','1998-05-17')
Insert Into Employee Values ('Sonali','Sinde','Silvasa','Gujrat','1995-06-17')


create table EmployeeTemp
(
 EmployeeId int IDENTITY(1,1) Primary key,
 FirstName varchar(20) Not NULL,
 LastName varchar(20) NOT NULL,
 City varchar(50) NOT NULL,
 State varchar(50) NOT NULL,
 DOB Date NOT NULL
);

insert into EmployeeTemp(FirstName, LastName, City, State, DOB) select FirstName, LastName, City, State, DOB from Employee

use EMP
SELECT EmployeeId,FirstName,LastName,City,State,DOB INTO #TempEmployee FROM Employee GO
Select *From #TempEmployee

Select * from EmployeeTemp