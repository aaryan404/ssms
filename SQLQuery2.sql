create table student(studentid int primary key , fname varchar , lname varchar , gender char, salary numeric (10,2));
select * from student;
insert into student (studentid , fname, lname , gender) 
values
(2 , 'aarush' , 'kumar', 'm'),
(3, 'aarya','khan' , 'f'),
(4, 'shya','khanal' , 'f'),
(5, 'hari','oli' , 'm'),
(6, 'gopal','khalifa' , 'm'),
(7, 'manish','rai' , 'f'),
(8, 'rojan','basent' , 'f'),
(9, 'ayush','karki' , 'm'),
(10, 'ujjwal','pou' , 'f');
alter table student
alter column fname varchar (50);
alter table student
alter column lname varchar (50);

alter table student
add salary numeric (10,2);

update student set salary = 80000.2 where studentid < 5 ;

select fname + ' '+lname as name from student;
select fname as top_students  from student where studentid < 4;

begin
print 'hello world';
declare @name varchar (10);
declare @num1 int;
declare @salary numeric (10,2);
set @num1 = 2;
set @name = 'aaryan';
set @salary = 100002.32
print @name;
print @num1;
print @salary
print @name +' earns ' + @salary;
end

begin
declare @name2 varchar (20);
declare @salary2 numeric (8,2);
set @name2 = 'aaryan';
set @salary2 = 100000.2;
print @name2 + ' earns ' + cast(@salary2 as varchar (10));
end	

begin
declare @name3 varchar (20);
declare @salary3 numeric (8,2);
set @name2 = 'aaryan';
set @salary2 = 100000.2;
print @name2 + ' earns ' + cast(@salary2 as varchar (10));
end	

--fetching data from table 

begin
declare @fullname varchar (20);
declare @salary6 numeric (10,2);

select @fullname = fname from student where studentid = 2;
select @salary6 = Salary from student where studentid = 2;
print @fullname +' earns ' + @salary6;
end

