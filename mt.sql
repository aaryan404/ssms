use students;
create table  studentTab (student_id int primary key, student_fname varchar (40),student_lname varchar(40), fees int);
insert into studentTab (student_id , student_fname, student_lname, fees) 
values(1, 'aaryan','khatri', 4000 ),
(2, 'ram','das', 5000 ),
(3, 'shyam','limbu', 3000 ),
(4, 'bhola','rijal', 1999 ),
(5, 'rita','rai', 2000 );
select * from studentTab;

declare @status varchar (40);
begin
select @status = fees from studentTab where student_id = 4;
if @status >2000 and @status < 5000
begin
print 'you have not paid full fees'
end
else if @status < 2000
begin
print 'you have not paid fees'
end
else if @status = 5000
begin
print  'you have paid full fees'
end
else
begin
print 'the fees in incorrect'
end
end


begin transaction ;
delete from studentTab where student_id = 1;

if @@ROWCOUNT = 1
begin
print 'you deleted a row'
commit;
end
else if @@ROWCOUNT >1
begin
print 'you cannot delete more than one row at a time'
rollback;
end



insert into studentTab (student_id , student_fname, student_lname, fees) 
values(1, 'aaryan','khatri', 4000 );


select * from studentTab;