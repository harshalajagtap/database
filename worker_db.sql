select First_name as worker_name from worker;
select upper(First_name) from worker; 
select distinct DEPARTMENT from worker;
select substring(First_name,1,3) from worker;
select instr(First_name, Binary 'a') from worker where First_name = "Amitabh";
select rtrim(First_name) from worker;
select ltrim(DEPARTMENT) from worker;
select distinct length(DEPARTMENT) from worker;
select replace(First_name,'a','A') from worker;
select concat(First_name,' ',Last_name) as fullname from worker;
select * from worker order by First_name asc;
select * from worker  order by DEPARTMENT desc;
select * from worker where First_name in('Vipul','Satish');