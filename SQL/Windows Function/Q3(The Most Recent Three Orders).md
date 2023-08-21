# The Most Recent Three Orders

## Problem Statement:

Write a query to find the most recent three orders of each user. If a user ordered three or less than three orders, return all of their orders.

Return the result table ordered by customer_name in ascending order and in case of a tie by the customer_id in ascending order. If there is still a tie, order them by order_date in descending order.
Sample Input:

Table: customers

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/6d53fdee-fbd7-46ec-ace0-caada3a5799a)



Table: orders

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/94a90bd2-7243-4856-ae4c-5a123d954b8c)



Sample output:

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/d68538e8-76a3-42b7-9325-32279a715ca2)



Explanation:

We will return the data by ascending order of name
We will start with Annabelle, she has only 2 orders, we return them.
Jonathan has exactly 3 orders.
Marwan ordered only one time.
Winston has 4 orders, we discard the order of "2020-06-10" because it is the oldest order.
---

## Solution

```sql

select customer_name, customer_id, order_id,order_date
from (
select
c.name as customer_name,
c.customer_id as customer_id,
o.order_id as order_id,
o.order_date as order_date,
rank() over(partition by customer_id 
order by order_date desc) as rnk
from orders o
join customers c
on o.customer_id = c.customer_id
)t
where rnk <= 3
order by customer_name, customer_id, order_date desc;

```
## Creator

This project was created by [Vishwas Joshi](https://github.com/vishwasjoshi2019).


[![GitHub](https://img.shields.io/badge/GitHub-%40vishwasjoshi2019-blue)](https://github.com/vishwasjoshi2019)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-%40vishwasjoshi2019-blue)](https://www.linkedin.com/in/vishwasjoshi2019/)
[![Gmail](https://img.shields.io/badge/Gmail-vishwasjoshi2019%40gmail.com-red)](mailto:vishwasjoshi2019@gmail.com)
[![Institute Email](https://img.shields.io/badge/Institute%20Email-vishwas.j%40iitgn.ac.in-red)](mailto:vishwas.j@iitgn.ac.in)
[![Instagram](https://img.shields.io/badge/Instagram-%40cursed__geek-orange)](https://www.instagram.com/cursed_geek/)
[![Twitter](https://img.shields.io/badge/Twitter-%40Vishwas79116150-blue)](https://twitter.com/Vishwas79116150)


