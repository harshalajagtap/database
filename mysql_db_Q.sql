select * from empolyee.employee_position;
select * from empolyee.emp_basic_details;
/*Q1. Write a query to fetch the EmpFname from the EmployeeInfo table in upper case and use the ALIAS name as EmpName.*/
select upper(EmpFname) as EmpName from empolyee.emp_basic_details;
select count(*) from empolyee.emp_basic_details where Department = "HR";
select sysdate();
select substring(EmpLname,1,4) from empolyee.emp_basic_details