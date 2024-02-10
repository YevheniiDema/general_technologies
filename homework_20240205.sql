-- 1 уровень сложности: 1. Создать таблицу employees;
-- employeeid целое число первичный ключ автоинкремент;
-- fname строка не null,
-- lastname строка не null,
-- email строка не null,
-- phone строка не null
use gt171023;
create table employees(
employee_id int primary key auto_increment,
fname varchar(64) not null,
lastname varchar(64) not null,
email varchar(64) not null,
phone varchar(64) not null
)

select * from employees;

-- Ой, забыли про зарплату)) Добавить поле salary numeric(9, 2),
alter table employees
add salary numeric(9, 2);

-- Ойййй, нет, зарплата должна быть целым числом. Изменить тип salary на integer 
alter table employees
modify column salary int;

-- Переименовать поле fname на first_name
alter table employees
change fname first_name varchar(64);

-- Удалить поле phone
alter table employees
drop column phone;

-- Добавить поле department строка не null 
alter table employees
add department varchar(64) not null;

-- Заполнить таблицу (7 строк)
insert into employees (first_name, lastname, email, salary, department)
values('John', 'Smith', 'john_smith@gmail.com', 10000, 'professional killer');

insert into employees (first_name, lastname, email, salary, department)
values('Jane', 'Smith', 'jane_smith@gmail.com', 8000, 'killer\'s wife');

insert into employees (first_name, lastname, email, salary, department)
values('Bob', 'Bubbel', 'bob@gmail.com', 85000, 'security');

insert into employees (first_name, lastname, email, salary, department)
values('Mickel', 'Douglas', 'mdouglas@gmail.com', 11000, 'actor');

insert into employees (first_name, lastname, email, salary, department)
values('Melania', 'Trump', 'melany@gmail.com', 15000, 'model');

insert into employees (first_name, lastname, email, salary, department)
values('Quentin', 'Tarantino', 'tarantino@gmail.com', 100000, 'director');

select * from employees;

