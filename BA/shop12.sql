create database shop;
use shop;
create table cloths(dressname varchar(60),jeensname varchar(255));
create table books(novel varchar(70),comics varchar(256));
create table dress(dressname varchar(70),jeensname varchar(60));

drop table dress;
alter table dress
add western int;



alter table dress
add sadi int not null;

update dress
set western = 1 
where dressname='night';

set sql_safe_updates=0;


 


set sql_safe_updates=0;
update dress 
set western ='ws',
western = 'wt'
where western =western;

select * from dress
where western in('ws','wt','wp');





drop table cloths;
drop database shop;

alter table cloths
add tshirts varchar(30);

alter table cloths
drop dressname;


insert into cloths
value('panjabi','narrow'),('panjabi','narrow');

insert into cloths
value('night','bellbottom'),('kurti','half'),('patiyala','wide');

insert into books
value('radhey','akbarbirbal'),('ramayan','changu'),('mahabharat','mangu'),('sita','tingu');

insert into dress
value('night','bellbottom'),('kurti','half'),('patiyala','wide');




select * from cloths;


select distinct jeensname from cloths;

select * from cloths
order by  jeensname asc;

select * from cloths
order by jeensname desc;

select * from cloths
where dressname = 'panjabi';

select * from cloths 
where dressname = 'panjabi' and 
dressname ='kurti';

select * from cloths
where jeensname ='narrow' 
or jeensname = 'bel';

select * from books
where not comics='mangu';

select * from books 
where comics between 'akbarbirbal' and 'mangu';

select * from books
where comics like 'c%';

select * from books
where comics like '%u';

select * from books 
where comics like '_k%';

select * from books
where comics like 'a_%';

select * from books
where comics like '%a__%';

select * from cloths limit 5;


select * from cloths 
where dressname in('night','kurti','patiyala','wide');


set sql_safe_updates=0;
update cloths 
set dressname ='plazo', jeensname='bluejeens'
where dressname ='patiyala';


delete from cloths
where dressname ='panjabi';
set sql_safe_updates=0;


select dressname as newdressname
from cloths;

select * from cloths;

create table cloths1
select * from cloths;



select dressname from cloths
union 
select dressname from cloths1 ;









