# Q1. Fix Product Name Format

## Problem Statement:

Since table sales was filled manually in the year 2000, product_name may contain leading and/or trailing white spaces, also they are case-insensitive.

Write a query to report:

product_name in lowercase without leading or trailing white spaces.
sale_date in the format ('YYYY-MM').
total the number of times the product was sold in this month.
Note: Return the result table ordered by product_name in ascending order. In case of a tie, order it by sale_date in ascending order.

Sample Input:

Table: sales

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/54efd63d-9ddc-436b-8453-9d173834061f)


Sample output:

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/bab322e2-8469-4726-911c-fd63f7581358)


Explanation:

In January, 2 LcPhones were sold. Please note that the product names are not case sensitive and may contain spaces.
In February, 2 LCKeychains and 1 LCPhone were sold.
In March, one matryoshka was sold.

---

## Solution

```sql
select lower(trim(product_name)) as product_name,date_format(sale_date,"%Y-%m") as sale_date,count(*) as total 
from sales 
group by lower(trim(product_name)),date_format(sale_date,"%Y-%m")
order by product_name,sale_date

```
## Creator

This project was created by [Vishwas Joshi](https://github.com/vishwasjoshi2019).


[![GitHub](https://img.shields.io/badge/GitHub-%40vishwasjoshi2019-blue)](https://github.com/vishwasjoshi2019)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-%40vishwasjoshi2019-blue)](https://www.linkedin.com/in/vishwasjoshi2019/)
[![Gmail](https://img.shields.io/badge/Gmail-vishwasjoshi2019%40gmail.com-red)](mailto:vishwasjoshi2019@gmail.com)
[![Institute Email](https://img.shields.io/badge/Institute%20Email-vishwas.j%40iitgn.ac.in-red)](mailto:vishwas.j@iitgn.ac.in)
[![Instagram](https://img.shields.io/badge/Instagram-%40cursed__geek-orange)](https://www.instagram.com/cursed_geek/)
[![Twitter](https://img.shields.io/badge/Twitter-%40Vishwas79116150-blue)](https://twitter.com/Vishwas79116150)


