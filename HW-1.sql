/*
Таблица employees

1) Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
2) Наполнить таблицу employee 70 строками.
*/

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees (employee_name) values 
  ('Desirae Hayes'),
  ('Renee Walter'),
  ('Mallory Thornton'),
  ('Kato Carrillo'),
  ('Marcia Cleveland'),
  ('Salvador Kinney'),
  ('Kyra Rodgers'),
  ('Wylie Woods'),
  ('Hyatt Long'),
  ('Jescie Keith'),
  ('Bruno Sloan'),
  ('Lysandra Dotson'),
  ('Cally Mccoy'),
  ('Guy Stephenson'),
  ('Bert Hawkins'),
  ('Barrett Hendricks'),
  ('Harlan Rodriquez'),
  ('Mason Carey'),
  ('Glenna Acosta'),
  ('Victoria Bailey'),
  ('Amber Mcfadden'),
  ('Deborah West'),
  ('Lani Herrera'),
  ('Karyn Holt'),
  ('Cheryl Ewing'),
  ('Nomlanga Chen'),
  ('Burke Richardson'),
  ('Abdul Deleon'),
  ('Zeph Jennings'),
  ('Rajah Battle'),
  ('Lacey Tate'),
  ('Hammett Cortez'),
  ('Shelly Rivas'),
  ('Bert Schultz'),
  ('Kaseem Herrera'),
  ('Christian Tyson'),
  ('Aidan Petersen'),
  ('Kim Pena'),
  ('Hollee Christensen'),
  ('Lucas Nash'),
  ('Kenneth Albert'),
  ('Geoffrey Forbes'),
  ('Illana Nguyen'),
  ('Dylan Travis'),
  ('Zoe Palmer'),
  ('Clarke Daniel'),
  ('Allistair Henson'),
  ('Edan Kaufman'),
  ('Kyle Crosby'),
  ('Dean Bishop'),
  ('Yuli Mcguire'),
  ('Pamela Horn'),
  ('Richard Graham'),
  ('Carissa Leblanc'),
  ('Heather Durham'),
  ('Ferris Fowler'),
  ('Zoe Maxwell'),
  ('Bo Hudson'),
  ('Jesse Velasquez'),
  ('Joel James'),
  ('Jerome Mcconnell'),
  ('Craig Rowe'),
  ('Octavius Garrett'),
  ('Claudia Carlson'),
  ('Kalia Austin'),
  ('Ginger Conley'),
  ('Hashim Ayala'),
  ('Sybil Hamilton'),
  ('Ursa Bennett'),
  ('Reece Dunlap');

/*
Таблица salary

3) Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
4) Наполнить таблицу salary 16 строками
*/
 
 create table salary (
 	id serial primary key,
 	monthly_salary int not null
);

insert into salary (monthly_salary)
values 
  (1000),
  (1100),
  (1200),
  (1300),
  (1400),
  (1500),
  (1600),
  (1700),
  (1800),
  (1900),
  (2000),
  (2100),
  (2200),
  (2300),
  (2400),
  (2500);

/*
Таблица employee_salary

5) Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
6) Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id
*/ 
	
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary (employee_id, salary_id)
values
  (3, 11),
  (1, 3),
  (5, 10),
  (40, 10),
  (23, 6),
  (11, 3),
  (52, 2),
  (15, 14),
  (26, 4),
  (16, 12),
  (33, 9),
  (85, 7),
  (2, 1),
  (27, 9),
  (100, 4),
  (8, 13),
  (41, 13),
  (69, 15),
  (71, 6),
  (10, 14),
  (12, 15),
  (47, 5),
  (61, 12),
  (99, 4),
  (17, 8),
  (34, 10),
  (44, 14),
  (75, 15),
  (55, 16),
  (59, 8),
  (111, 2),
  (67, 11),
  (18, 14),
  (77, 2),
  (4, 3),
  (6, 7),
  (89, 11),
  (90, 9),
  (63, 12),
  (81, 14);

/*
Таблица roles

7) Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
8) Поменять тип столба role_name с int на varchar(30)
9) Наполнить таблицу roles 20 строками
*/ 

create table roles (
	id serial primary key,
	role_name int not null unique
);

alter table roles
ALTER COLUMN role_name TYPE varchar(30);

insert into roles (role_name)
values
  ('Junior Python developer'),
  ('Middle Python developer'),
  ('Senior Python developer'),
  ('Junior Java developer'),
  ('Middle Java developer'),
  ('Senior Java developer'),
  ('Junior JavaScript developer'),
  ('Middle JavaScript developer'),
  ('Senior JavaScript developer'),
  ('Junior Manual QA engineer'),
  ('Middle Manual QA engineer'),
  ('Senior Manual QA engineer'),
  ('Project Manager'),
  ('Designer'),
  ('HR'),
  ('CEO'),
  ('Sales manager'),
  ('Junior Automation QA engineer'),
  ('Middle Automation QA engineer'),
  ('Senior Automation QA engineer');

/*
Таблица roles_employee

10) Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
11) Наполнить таблицу roles_employee 40 строками
*/ 
 
create table roles_employee (
 	id serial primary key,
 	employee_id int not null unique,
 	role_id int not null,
 	foreign key(employee_id)
 		references employees(id),
 	foreign key(role_id)
 		references roles(id)
);

insert into roles_employee (employee_id, role_id)
values
  (3, 8),
  (1, 4),
  (5, 8),
  (40, 18),
  (9, 11),
  (38, 1),
  (52, 10),
  (15, 13),
  (26, 4),
  (16, 1),
  (33, 8),
  (6, 8), 
  (2, 8),
  (27, 5),
  (7, 4), 
  (8, 9),
  (41, 14),
  (69, 20),
  (32, 1), 
  (10, 14),
  (12, 3),
  (47, 11),
  (61, 12),
  (23, 4), 
  (17, 5),
  (34, 2),
  (44, 6),
  (11, 9), 
  (55, 13),
  (59, 11),
  (31, 2), 
  (67, 19),
  (18, 3),
  (56, 19), 
  (4, 1),
  (48, 2),
  (51, 11), 
  (49, 9), 
  (63, 3),
  (66, 14);