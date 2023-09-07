select * from salary;

/*1*/
select employees.employee_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id

/*2*/
select employees.employee_name, salary.monthly_salary from employee_salary
join employees on employees.id  = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary < 2000;

/*3*/
select salary.monthly_salary, employees.employee_name from employee_salary 
join salary on salary.id = employee_salary.salary_id
full join employees on employees.id = employee_salary.employee_id
where employees.employee_name is null;

/*4*/
select salary.monthly_salary, employees.employee_name from employee_salary
full join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where employees.employee_name is null
and 
salary.monthly_salary < 2000;

/*5*/
select employees.employee_name, salary.monthly_salary from employee_salary
full join employees on employees.id = employee_salary.employee_id
full join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary is null;


/*6*/
select employees.employee_name, roles.role_name from roles_employee
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id;

/*7*/

select employees.employee_name, roles.role_name from roles_employee
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Java developer%';

/*8*/

select employees.employee_name, roles.role_name from roles_employee
join employees on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Python developer%';


/*9*/

select employees.employee_name, roles.role_name from roles_employee
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%QA engineer%';


/*10*/

select employees.employee_name, roles.role_name from roles_employee
join employees on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Manual QA engineer%';


/*11*/

select employees.employee_name, roles.role_name from roles_employee
join employees on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Automation QA engineer%';


/*12*/

select employees.employee_name, salary.monthly_salary, roles.role_name from employee_salary
join employees on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Junior%';


/*13*/

select employees.employee_name, salary.monthly_salary, roles.role_name from employee_salary 
join employees on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Middle%';


/*14*/

select employees.employee_name, salary.monthly_salary, roles.role_name from employee_salary
join employees on employees.id  = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Senior%';


/*15*/

select salary.monthly_salary, roles.role_name from employee_salary, salary, roles_employee, roles, employees
where salary.id = employee_salary.salary_id 
and employees.id = employee_salary.employee_id 
and roles_employee.employee_id = employees.id 
and roles.id = roles_employee.role_id
and roles.role_name like '%Java developer%';


/*16*/

select salary.monthly_salary, roles.role_name from employee_salary
join employees on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Python developer%';


/*17*/

select employees.employee_name, salary.monthly_salary, roles.role_name from employee_salary
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Junior Python%';


/*18*/

select employees.employee_name, salary.monthly_salary, roles.role_name from employee_salary
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where roles.role_name = 'Middle JavaScript developer';


/*19*/

select employees.employee_name, salary.monthly_salary, roles.role_name from employee_salary
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where roles.role_name = 'Senior Java developer';


/*20*/

select salary.monthly_salary, roles.role_name from employee_salary
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Junior%QA engineer%';


/*21*/

select round(avg(salary.monthly_salary), 2) as avg_Junior_salary from employee_salary
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Junior%';


/*22*/

select sum(salary.monthly_salary) as sum_js_dev_salary  from employee_salary
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%JavaScript developer%';


/*23*/

select min(salary.monthly_salary) as min_qa_salary  from employee_salary
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%QA engineer%';


/*24*/

select max(salary.monthly_salary) as min_qa_salary  from employee_salary
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%QA engineer%';


/*25*/

select count(roles.role_name) as qty_qa from roles_employee
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%QA engineer%';


/*26*/

select count(roles.role_name) as qty_middle from roles_employee
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Middle%';


/*27*/

select count(roles.role_name) as qty_devs from roles_employee
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%developer%';


/*28*/

select sum(salary.monthly_salary) as fond_dev from employee_salary 
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%developer%';


/*29*/

select employees.employee_name, roles.role_name, salary.monthly_salary from employee_salary 
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id
order by salary.monthly_salary asc;


/*30*/

select employees.employee_name, roles.role_name, salary.monthly_salary from employee_salary 
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary asc;


/*31*/

select employees.employee_name, roles.role_name, salary.monthly_salary from employee_salary 
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id
where salary.monthly_salary < 2300
order by salary.monthly_salary asc;


/*32*/

select employees.employee_name, roles.role_name, salary.monthly_salary from employee_salary 
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id
where salary.monthly_salary in (1100, 1500, 2000)
order by salary.monthly_salary asc;