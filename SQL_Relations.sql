create table employees_roles 
(id serial primary key, 
id_role int not null, 
id_employee int not null,
foreign key (id_role) references roles(id),
foreign key (id_employee) references employees(id));

create table employees 
(id serial primary key, 
employee_name varchar not null);

create table claim 
(id serial primary key,
service_id int not null, 
employee_id int not null, 
material_id int not null, 
claim_date date not null, 
sales_manager int not null,
foreign key (service_id) references service(id),
foreign key (employee_id) references employees(id),
foreign key (material_id) references materials(id),
foreign key (sales_manager) references employees(id));

create table roles 
(id serial primary key, 
role_title varchar not null);

create table service 
(id serial primary key, 
service_title varchar not null, 
price int not null);

create table materials 
(id serial primary key, 
material_title varchar not null, 
amount int not null, 
price int not null);

create table roles_salary 
(id serial primary key, 
id_role int not null, 
id_salary int not null,
foreign key (id_role) references roles(id),
foreign key (id_salary) references salary(id));

create table salary 
(id serial primary key, 
monthly_salary int not null);


insert into salary values (default, 1555);
insert into service values (default, 'repair', 100);
insert into service (service_title, price) values ('drying', 110);
insert into materials (material_title, amount, price) values ('air fresher apple', 30, 50), ('car fresher', 100, 33);
insert into roles_salary (id_role, id_salary) values (1, 2), (3, 1), (2, 8), (4, 6), (5, 10), (6, 9), (7, 8), (8, 7), (9, 3), (9, 2);


insert into employees_roles (id_role, id_employee) values (1, 10), (3, 9), (2, 8), (4, 6), (5, 7), (6, 5), (7, 4), (8, 3), (9, 2), (9, 1);

insert into claim (service_id, employee_id, material_id, claim_date, sales_manager) 
values (3, 9, 5, '10/12/2020', 6), (3, 9, 7, '11/12/2020', 3),
(4, 5, 5, '12/12/2020', 9), (2, 9, 3, '11/26/2020', 8),
(6, 1, 3, '01/12/2021', 5), (4, 9, 5, '02/28/2021', 1),
(8, 2, 2, '10/09/2021', 1), (8, 9, 6, '12/16/2020', 5),
(10, 9, 7, '01/03/2021', 2), (5, 9, 10, '12/20/2020', 7);


create table suppliers (id serial primary key, name varchar);
insert into suppliers (name) values ('Coca-cola'), ('Pepsi-cola'), ('P&G'), ('AT&T'), ('Tesla'), ('Philip Morris'), ('Coin Base'), ('Virgin Galactic'), ('Amazon'), ('Microsoft');
ALTER TABLE materials ADD COLUMN supplier_id int;
ALTER TABLE materials add foreign key (supplier_id) references suppliers(id);
ALTER TABLE employees ADD COLUMN surname varchar (50);
ALTER TABLE salary ADD COLUMN currency varchar (7);
