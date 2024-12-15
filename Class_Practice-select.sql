-- class practice
select * from COMPANY where SALARY<60000;
select * from COMPANY where ADDRESS <> 'Texas';
select * from COMPANY where id >4;
select * from COMPANY where id BETWEEN 4 and 6;
select sum(salary) as total_salary from COMPANY ;
select *, max(salary) from COMPANY ;
select name,SALARY from COMPANY where SALARY>(select avg(SALARY) from COMPANY);
select name,SALARY,( select count(*) from COMPANY) as cnt from COMPANY where SALARY>(select avg(SALARY) from COMPANY);
select count(*) from COMPANY where SALARY>(select avg(SALARY) from COMPANY);
UPDATE COMPANY set SALARY=SALARY+SALARY*0.25 where SALARY>50_000;
UPDATE COMPANY set ADDRESS='New-York' where NAME='Allen';
UPDATE COMPANY set NAME='Kimm',AGE=23 where NAME like 'Kim';
select * from COMPANY;
DELETE from COMPANY  where NAME like 'Kimm';
DELETE from COMPANY where SALARY=(select max(SALARY) from COMPANY);
select * from COMPANY