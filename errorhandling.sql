declare @val1 int;
declare @val2 int;

begin try
set @val1 = 19;
set @val2 = @val1/0;

end try
begin catch

print 'the error occureed is : ';
print error_message();
end catch
print 'my name is aaryan'


declare @valA int;
declare @valB int;
begin try
set @valA = 8;
set @valB = @valA%2;
if @valB = 1
begin

print 'There is no error'
end
else
begin
print 'error occur';
throw 60000 , 'number is even', 5;
end
end try
begin catch
print 'the error occureed is : ';
print error_message();
end catch


create table exceptionHandle(userID int primary key, username varchar (40) , salary numeric(10,2)  null check (salary >50000));

insert into exceptionHandle(userID, username , salary )
values(1, 'aaryan' , 60000),
(2, 'pratyasha', 50001 ),
(3, 'ram' , 70000);

select * from exceptionHandle;

begin try

update exceptionHandle set salary = 40000 where userID = 2;
update exceptionHandle set salary = 70000 where userID = 3;
end try
begin catch
print @@ERROR
end catch


begin 
declare @name4 varchar (20);
declare @sal numeric (8,2);
set @name4 = 'aaryan';
set @sal = 5000;
print @name4 + 'earns' + @sal
end