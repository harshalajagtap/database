select * from empolyee.employee_position;
select * from empolyee.emp_basic_details;
/*Q1. Write a query to fetch the EmpFname from the EmployeeInfo table in upper case and use the ALIAS name as EmpName.*/
select upper(EmpFname) as EmpName from empolyee.emp_basic_details;
select count(*) from empolyee.emp_basic_details where Department = "HR";
select sysdate();
select substring(EmpLname,1,4) from empolyee.emp_basic_details;
SELECT MID(Address,1,LOCATE('(',Address) )FROM empolyee.emp_basic_details;
create table new_table1 as select * from emp_basic_details;
SELECT * FROM employee_position WHERE Salary BETWEEN '50000' and '100000';
select * from emp_basic_details where EmpFname like 'S%';
SELECT * FROM  employee_position ORDER BY Salary DESC limit N;
SELECT CONCAT(EmpFname, ' ', EmpLname) AS 'FullName' FROM emp_basic_details;
select * from emp_basic_details order by Department asc, EmpFname desc;
select count(*),Gender from emp_basic_details where DOB between '02/05/1970 'AND '31/12/1975' GROUP BY Gender;
select * from emp_basic_details where EmpLname like '%a';
select * from emp_basic_details where EmpFname not in('Sanjay','Sonia');
select * from emp_basic_details where Address like 'Delhi(DEL)%';