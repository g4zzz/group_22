--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary from employees join employees_salary on employees.id=employees_salary.employee_id where monthly_salary>0;
--2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name from employees 
join employees_salary on employees.id = employees_salary.employee_id where monthly_salary<2000;
--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select * from employees_salary 
left join employees on employees.id=employees_salary.employee_id where employee_name is null;
--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select * from employees_salary 
left join employees on employees.id=employees_salary.employee_id where employee_name is null and monthly_salary<2000;
--5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name from employees 
left join employees_salary on employees.id=employees_salary.employee_id where monthly_salary is null;
--6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name from employees 
left join roles_employees on employees.id=roles_employees.employee_id
join roles on roles.id = roles_employees.role_id;
--7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name from employees 
left join roles_employees on employees.id=roles_employees.employee_id
join roles on roles.id = roles_employees.role_id where role_name like '%Java developer';
-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name from employees 
left join roles_employees on employees.id=roles_employees.employee_id
join roles on roles.id = roles_employees.role_id where role_name like '%Python%';
-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name from employees 
left join roles_employees on employees.id=roles_employees.employee_id
join roles on roles.id = roles_employees.role_id where role_name like '%QA%';
-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name from employees 
left join roles_employees on employees.id=roles_employees.employee_id
join roles on roles.id = roles_employees.role_id where role_name like '%Manual%';
--11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name from employees 
left join roles_employees on employees.id=roles_employees.employee_id
join roles on roles.id = roles_employees.role_id where role_name like '%Auto%';
--12. ������� ����� � �������� Junior ������������
select employee_name, monthly_salary from employees 
left join roles_employees on employees.id=roles_employees.employee_id
join roles on roles.id = roles_employees.role_id 
join employees_salary on employees_salary.employee_id=employees.id where role_name like '%Jun%';
--13. ������� ����� � �������� Middle ������������
select employee_name, monthly_salary from employees 
left join roles_employees on employees.id=roles_employees.employee_id
join roles on roles.id = roles_employees.role_id 
join employees_salary on employees_salary.employee_id=employees.id where role_name like '%Mid%';
--14. ������� ����� � �������� Senior ������������
select employee_name, monthly_salary from employees 
left join roles_employees on employees.id=roles_employees.employee_id
join roles on roles.id = roles_employees.role_id 
join employees_salary on employees_salary.employee_id=employees.id where role_name like '%Sen%';
--15. ������� �������� Java �������������
select monthly_salary from employees_salary 
join roles_employees on employees_salary.employee_id=roles_employees.employee_id 
join roles on roles.id = roles_employees.role_id where role_name like '%Java dev%';
-- 16. ������� �������� Python �������������
select monthly_salary from employees_salary 
join roles_employees on employees_salary.employee_id=roles_employees.employee_id 
join roles on roles.id = roles_employees.role_id where role_name like '%Python%';
-- 17. ������� ����� � �������� Junior Python �������������
select employee_name, monthly_salary from employees 
full join roles_employees on employees.id=roles_employees.employee_id
full join roles on roles.id = roles_employees.role_id 
full join employees_salary on employees_salary.employee_id=employees.id where role_name like '%Junior Python%';
--18. ������� ����� � �������� Middle JS �������������
select employee_name, monthly_salary from employees 
full join roles_employees on employees.id=roles_employees.employee_id
full join roles on roles.id = roles_employees.role_id 
full join employees_salary on employees_salary.employee_id=employees.id where role_name like '%Middle JavaScript developer%';
-- 19. ������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary from employees 
full join roles_employees on employees.id=roles_employees.employee_id
full join roles on roles.id = roles_employees.role_id 
full join employees_salary on employees_salary.employee_id=employees.id where role_name like '%Senior Java developer%';
-- 20. ������� �������� Junior QA ���������
select monthly_salary from employees_salary 
join roles_employees on employees_salary.employee_id=roles_employees.employee_id 
join roles on roles.id = roles_employees.role_id  where role_name like '%Jun%' and role_name like '%QA%';
-- 21. ������� ������� �������� ���� Junior ������������
select AVG(monthly_salary) from employees_salary 
join roles_employees on employees_salary.employee_id=roles_employees.employee_id 
join roles on roles.id = roles_employees.role_id  where role_name like '%Jun%';
-- 22. ������� ����� ������� JS �������������
select sum(monthly_salary) from employees_salary 
join roles_employees on employees_salary.employee_id=roles_employees.employee_id 
join roles on roles.id = roles_employees.role_id  where role_name like '%JavaScript dev%';
-- 23. ������� ����������� �� QA ���������
select min(monthly_salary) from employees_salary 
join roles_employees on employees_salary.employee_id=roles_employees.employee_id 
join roles on roles.id = roles_employees.role_id  where role_name like '%QA%';
-- 24. ������� ������������ �� QA ���������
select max(monthly_salary) from employees_salary 
full join roles_employees on employees_salary.employee_id=roles_employees.employee_id 
full join roles on roles.id = roles_employees.role_id  where role_name like '%QA%';
-- 25. ������� ���������� QA ���������
select count(monthly_salary) from employees_salary 
full join roles_employees on employees_salary.employee_id=roles_employees.employee_id 
full join roles on roles.id = roles_employees.role_id  where role_name like '%QA%';
-- 26. ������� ���������� Middle ������������.
select count(monthly_salary) from employees_salary 
full join roles_employees on employees_salary.employee_id=roles_employees.employee_id 
full join roles on roles.id = roles_employees.role_id  where role_name like '%Mid%';
-- 27. ������� ���������� �������������
select count(monthly_salary) from employees_salary 
full join roles_employees on employees_salary.employee_id=roles_employees.employee_id 
full join roles on roles.id = roles_employees.role_id  where role_name like '%dev%';
-- 28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary) from employees_salary 
full join roles_employees on employees_salary.employee_id=roles_employees.employee_id 
full join roles on roles.id = roles_employees.role_id  where role_name like '%dev%';
-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary from employees 
full join roles_employees on employees.id=roles_employees.employee_id
full join roles on roles.id = roles_employees.role_id 
full join employees_salary on employees_salary.employee_id=employees.id order by monthly_salary;
-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary from employees 
full join roles_employees on employees.id=roles_employees.employee_id
full join roles on roles.id = roles_employees.role_id 
full join employees_salary on employees_salary.employee_id=employees.id where monthly_salary between 1700 and 2300 order by monthly_salary;
-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary from employees 
full join roles_employees on employees.id=roles_employees.employee_id
full join roles on roles.id = roles_employees.role_id 
full join employees_salary on employees_salary.employee_id=employees.id where monthly_salary < 2300 order by monthly_salary;
-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employees 
full join roles_employees on employees.id=roles_employees.employee_id
full join roles on roles.id = roles_employees.role_id 
full join employees_salary on employees_salary.employee_id=employees.id where monthly_salary in (1100, 1500, 2300) order by monthly_salary;
