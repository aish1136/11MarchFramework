create database signup;
use signup;
create table student(FN varchar(60),LN varchar(80),rollno int,marks int);
create table faculty(FN varchar(256),LN varchar(68),lecno int);
create table secondyr(FN varchar(40),idno int,mobileno int);

insert into secondyr(FN,idno,mobileno)
values('rohan',1,123),('dev',2,234),('priya',3,444),('reva',4,not null);

insert into student(FN,LN,rollno,marks)
value('sachin','bodkhe',2,30),('vishwa','akolkar',3,25),('pooja','patil',4,20),(' aish','bodkhe',5,21),('divya','pancjal',6,16),('ashish','thombare',7,15);

insert into faculty(FN,LN,lecno)
values('snehal','patil',1),('sneha','deshmukh',2),('pallavi','gund',3),('umesh','jagdale',4),('dg','patil',5),('rj','patil',6);

select * from student;
select FN from student;

select distinct FN from student;
select distinct LN from faculty;
select distinct  FN from student;

select * from student order by FN;
select * from faculty order by FN desc;

select Top three  from student;
select * from student limit 1;

select * from student where marks <20;
select * from student where FN ='vishwa';
select * from student where rollno = 6;

select * from student where FN='pooja' and LN='patil';
select * from student where FN ='vishwa' or LN = 'patil';
select count(FN & LN ) from student where FN ='sachin'and LN ='bodkhe' ;

select * from faculty where FN like 's%';
select * from faculty where FN like '%____l';

select FN as name from student as collegers;

create table collegers (mobileno int not null unique);

alter table faculty add marks int ;
 
 create table faculty (marks int not null default 20);
create table collegers(mobileno int not null default 220);

create table secondyr(FN varchar(40) not null, idno int not null, mobileno int not null);

select count( marks) from student;
select sum(marks) from student;
select avg (marks) from student;
select min(marks) from student;
select max(marks) from student;

select marks sum from student group by rollno having sum (marks);



