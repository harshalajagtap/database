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
select * from worker where First_name not in('Vipul','Satish');
select * from worker where DEPARTMENT like 'Admin%';
select * from worker where First_name like '%a%';
select * from worker where First_name like 'a%';
select * from worker where First_name like '%a';
select * from worker where First_name like '_____h';
select * from worker where SALARY between 100000 and 500000;
select * from worker where year(JOINING_DATE)=2014 and month(JOINING_DATE)=2;
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) As Worker_Name, Salary
FROM worker 
WHERE WORKER_ID IN 
(SELECT WORKER_ID FROM worker 
WHERE Salary BETWEEN 50000 AND 100000);

select DEPARTMENT,count(WORKER_ID) No_Of_Workers from worker group by DEPARTMENT ORDER BY No_Of_Workers DESC;

SELECT DISTINCT W.FIRST_NAME, T.WORKER_TITLE
FROM Worker W
INNER JOIN Title T
ON W.WORKER_ID = T.WORKER_REF_ID
AND T.WORKER_TITLE in ('Manager');

SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*)
FROM Title
GROUP BY WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1;

select * from worker where mod(WORKER_ID,2)<>0;
select * from worker where mod(WORKER_ID,2)=0;
create table WorkerClone like worker;
SELECT * INTO WorkerClone FROM Worker;

SELECT * FROM Worker
INTERSECT
SELECT * FROM WorkerClone;

SELECT * FROM Worker
INTERSECT
SELECT * FROM title;

select * from worker order by SALARY desc limit 10;
SELECT Salary FROM Worker ORDER BY Salary DESC LIMIT n-1,1;
