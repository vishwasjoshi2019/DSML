# 25 yrs experience

## Problem Statement:

Write a query to display the manager details and calculate the total number of years the managers have been working in the company till 8th June 2022 and save it as 'Experience'.

Return the details of those managers whose experience is more than 25 years.

Note:

To calculate the 'Experience' of the managers find the date difference and divide the difference by 365.
Return the columns 'employee_id', 'first_name', 'last_name', 'salary', 'department_name', and 'Experience'.
Return the employee_id of the manager along with other columns.
Return the result ordered by employee_id in ascending order.
Dataset Description:

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/6a6268b0-2356-433e-86db-021b38cf0de3)

Sample Input:

Table: employees

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/5fb78e7e-98cf-45be-a240-17d060de474e)


The manager_id in the employees table is the employee_id of the manager.

Table: departments

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/00ba585a-125e-43cb-b07e-e6a1bd4eebe2)


Sample Output:
![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/7a945548-0016-4e30-8400-cf8994aaa77e)


---

## Solution

```sql
select distinct emp.employee_id, 
emp.first_name, emp.last_name, emp.salary, department_name, 
DATEDIFF('2022-06-08', emp.hire_date)/365 'Experience'
from employees emp 
join employees mng 
on emp.employee_id = mng.manager_id 
join departments dep 
on dep.department_id = emp.department_id 
where DATEDIFF('2022-06-08', emp.hire_date)/365 > 25 
order by emp.employee_id;

```
## Creator

This project was created by [Vishwas Joshi](https://github.com/vishwasjoshi2019).


[![GitHub](https://img.shields.io/badge/GitHub-%40vishwasjoshi2019-blue)](https://github.com/vishwasjoshi2019)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-%40vishwasjoshi2019-blue)](https://www.linkedin.com/in/vishwasjoshi2019/)
[![Gmail](https://img.shields.io/badge/Gmail-vishwasjoshi2019%40gmail.com-red)](mailto:vishwasjoshi2019@gmail.com)
[![Institute Email](https://img.shields.io/badge/Institute%20Email-vishwas.j%40iitgn.ac.in-red)](mailto:vishwas.j@iitgn.ac.in)
[![Instagram](https://img.shields.io/badge/Instagram-%40cursed__geek-orange)](https://www.instagram.com/cursed_geek/)
[![Twitter](https://img.shields.io/badge/Twitter-%40Vishwas79116150-blue)](https://twitter.com/Vishwas79116150)


