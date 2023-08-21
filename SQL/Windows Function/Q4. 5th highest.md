# 5th highest

## Problem Statement:

Write a query to display the details of the employees who have the 5th highest salary in each job category.

Return the columns 'employee_id', 'first_name', and 'job_id'.
Return the result ordered by employee_id in ascending order.

Dataset Description:

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/a7852b24-ce09-4e4f-98fc-c453ccdc7685)



Sample Input:

Table: employees

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/4a43d107-fc49-4e14-bc01-8d8799bd7fa6)



Sample Output:

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/f5e9a9a0-45c3-4386-8fb7-602a0777a5c0)


---

## Solution

```sql
select employee_id,first_name, job_id from (
select employee_id,first_name, job_id, 
dense_rank() over(partition by job_id order by 
salary desc) 'salary_rank' from employees)t 
where salary_rank = 5
order by employee_id; 
```
## Creator

This project was created by [Vishwas Joshi](https://github.com/vishwasjoshi2019).


[![GitHub](https://img.shields.io/badge/GitHub-%40vishwasjoshi2019-blue)](https://github.com/vishwasjoshi2019)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-%40vishwasjoshi2019-blue)](https://www.linkedin.com/in/vishwasjoshi2019/)
[![Gmail](https://img.shields.io/badge/Gmail-vishwasjoshi2019%40gmail.com-red)](mailto:vishwasjoshi2019@gmail.com)
[![Institute Email](https://img.shields.io/badge/Institute%20Email-vishwas.j%40iitgn.ac.in-red)](mailto:vishwas.j@iitgn.ac.in)
[![Instagram](https://img.shields.io/badge/Instagram-%40cursed__geek-orange)](https://www.instagram.com/cursed_geek/)
[![Twitter](https://img.shields.io/badge/Twitter-%40Vishwas79116150-blue)](https://twitter.com/Vishwas79116150)


