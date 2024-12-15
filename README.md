# sqLite-Lec2-Dec-15-24-

SQL - select - where

## subjects learned:

* SELECT <> FROM <table name> : get columns
    * SELECT * FROM company : get all columns from table name 'company'
    * SELECT <','. join([column names])> FROM company : get all columns from table name 'company'
    * select * ,salary*1.17 from company, get all columns and multiple for each value in salary *1.17
* aggregation function(מצטבר): like AVG,MIN,MAX,COUNT(*),total=sum: meaning - take all values and calculate something
    * select AVG(salary) from company
* printf: select printf('%,.2f,AVG(salary)) as AVG from company
* operators in SQL are mostly the same as other languages:
  * <> = !=
  * BETWEEN = in range of numbers - including the edges:
    * select * from company where salary BETWEEN 2000 and 4000
  * IN  = in list:
    * select * from company where address in ('Texas','New york')
  * LIKE = query on strings with some pattern 
  * nested query:
    * INVALID query :select name,SALARY,count(*) from COMPANY where SALARY>
      (select avg(SALARY) from COMPANY) - because return only the first employee along the count, need to separate the query to 2 queries:
      * select name,SALARY from COMPANY where SALARY>(select avg(SALARY) from COMPANY)
      * select count(*) from COMPANY where SALARY>(select avg(SALARY) from COMPANY)
    * or nested query within the select:
      * select name,SALARY,( select count(*) from COMPANY) as cnt from COMPANY where SALARY>(select avg(SALARY) from COMPANY); 
  * count(<column>)= how many values in the column are NOT NULL
## extra subjects:
