# Difference of salary


## Problem Statement:

For each employee display the salary and salary difference from the next higher salary in increasing order.

Return the columns employee_id, salary, next_higher_salary and salary_difference.
Return the output ordered by salary and salary_difference in ascending order.
Dataset Description:

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/02995f41-1700-4d4c-9184-1db572e41c4c)


Sample Input:

Table: employees

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/6669d189-4314-4da6-95ef-c06523c0af32)


Sample Output:

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/0f1cfeb4-3a1f-48b3-91eb-edb4007eaa6a)

---

## Solution

```sql

SELECT 
employee_id, salary,
lead(salary) OVER(ORDER BY salary) AS next_higher_salary,
lead(salary) OVER(ORDER BY salary) - salary AS salary_difference
FROM employees
order by salary, salary_difference


```
## Creator

This project was created by [Vishwas Joshi](https://github.com/vishwasjoshi2019).


[![GitHub](https://img.shields.io/badge/GitHub-%40vishwasjoshi2019-blue)](https://github.com/vishwasjoshi2019)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-%40vishwasjoshi2019-blue)](https://www.linkedin.com/in/vishwasjoshi2019/)
[![Gmail](https://img.shields.io/badge/Gmail-vishwasjoshi2019%40gmail.com-red)](mailto:vishwasjoshi2019@gmail.com)
[![Institute Email](https://img.shields.io/badge/Institute%20Email-vishwas.j%40iitgn.ac.in-red)](mailto:vishwas.j@iitgn.ac.in)
[![Instagram](https://img.shields.io/badge/Instagram-%40cursed__geek-orange)](https://www.instagram.com/cursed_geek/)
[![Twitter](https://img.shields.io/badge/Twitter-%40Vishwas79116150-blue)](https://twitter.com/Vishwas79116150)


