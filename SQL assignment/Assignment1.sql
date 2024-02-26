create table countries(
name varchar (200),
population int,
capital varchar(200));
insert into countries (name, population, capital)
values
('China','1382','Beijing'),
('India','1326','Delhi'),
('United States','324','Washington D.C.'),
('Indonesia','260','Jakarta'),
('Brazil','209','Brasilia'),
('Pakistan','193','Islamabad'),
('Nigeria','187','Abuja'),
('Bangladesh','163','Dhaka'),
('Russia','143','Moscow'),
('Mexico','128','Mexico City'),
('Japan','126','Tokyo'),
('Philippines','102','Manila'),
('Ethiopia','101','Addis Ababa'),
('Vietnam','94','Hanoi'),
('Egypt','93','Cairo'),
('Germany','81','Berlin'),
('Iran','80','Tehran'),
('Turkey','79','Ankara'),
('Congo','79','Kinshasa'),
('France','64','Paris'),
('United Kingdom','65','London'),
('Italy','60','Rome'),
('South Africa','55','Pretoria'),
('Myanmar','54','Naypyidaw'),
('Peru','45','Lima'),
('Ethiopia','33','Addis Ababa');
update countries set capital='New Delhi' where name='India';
alter table countries rename to big_countries; 

create table product
  (
     product_id int primary key auto_increment,
     product_name varchar(30) unique not null,
     description varchar(500),
     supplier_id int
     );

alter table product
  auto_increment = 20;

create table suppliers
  (
     supplier_id int primary key auto_increment,
     supplier_name varchar(25),
     location varchar(30)
     );

alter table suppliers
  auto_increment = 20;

create table stock
  (
     id int primary key auto_increment,
     product_id int,
     balance_stock int,
     foreign key(product_id)
    references product(product_id)
        on delete set null
   );

Alter table stock
  auto_increment = 20;

Alter table product
  add foreign key (supplier_id)
    references suppliers(supplier_id)
    on delete cascade;


  
insert into product (product_id,product_name,description,supplier_id)
values
('1','cars','cars is use for travelling for long distance',null),
('2','bikes','bikes is use for travelling for short distance',null),   
('3','mobiles','mobiles are use to connect with each other',null);

insert into suppliers(supplier_id,supplier_name,location)
values
('1','TATA','Mumbai'),
('2','TVS','Chennai'),
('3','Samsung','Banglore');


insert into stock(id,product_id,balance_stock)
values
('1','1','250'),
('2','2','649'),
('3','3','555');

alter table suppliers
	modify column supplier_name varchar(25) unique not null;
    
create table employee(
id int,
firstname varchar(20),
lastname varchar(20),
salary int,
hire_date date);

insert into employee(id,firstname,lastname,salary,hire_date)
values
('1','ajay','sharma','22500','2000-02-14'),
('2','ashish','verma','13600','2002-08-25'),
('3','steve','rogers','78200','1992-04-04'),
('4','tony','stark','50000','1995-10-09');

alter table employee
add dept_no int;

UPDATE employee
  SET dept_no = 
    case
        when id % 2 = 0 THEN 20
        when id % 3 = 0 THEN 30
        when id % 4 = 0 THEN 40
    when id % 5 = 0 THEN 50
        ELSE  10
  END;
  
  CREATE UNIQUE INDEX ID_UNIQ
  ON employee ( id );

create view employee_salary as
select id,firstname,lastname,salary
from employee
order by salary desc;

select * from employee;


