# Order Two Columns Independently

## Problem Statement:

Write a query to independently:

order first_col in ascending order.
order second_col in descending order.

Sample Input:

Table: data

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/c569e198-fae7-4a99-8ee6-7fa9db155e64)




Sample output:

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/04cd4d98-247b-4ebc-a594-fe812e1641d8)


Explanation:

The first_col has been ordered in ascending manner.
The second_col has been ordered in descending manner.---

## Solution

```sql

SELECT first_col, second_col
FROM (
SELECT first_col, ROW_NUMBER() OVER(ORDER BY first_col ASC) AS r
FROM data
)a JOIN(
SELECT second_col, ROW_NUMBER() OVER(ORDER BY second_col DESC) AS r
FROM data)b
ON a.r = b.r;

```
## Creator

This project was created by [Vishwas Joshi](https://github.com/vishwasjoshi2019).


[![GitHub](https://img.shields.io/badge/GitHub-%40vishwasjoshi2019-blue)](https://github.com/vishwasjoshi2019)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-%40vishwasjoshi2019-blue)](https://www.linkedin.com/in/vishwasjoshi2019/)
[![Gmail](https://img.shields.io/badge/Gmail-vishwasjoshi2019%40gmail.com-red)](mailto:vishwasjoshi2019@gmail.com)
[![Institute Email](https://img.shields.io/badge/Institute%20Email-vishwas.j%40iitgn.ac.in-red)](mailto:vishwas.j@iitgn.ac.in)
[![Instagram](https://img.shields.io/badge/Instagram-%40cursed__geek-orange)](https://www.instagram.com/cursed_geek/)
[![Twitter](https://img.shields.io/badge/Twitter-%40Vishwas79116150-blue)](https://twitter.com/Vishwas79116150)


