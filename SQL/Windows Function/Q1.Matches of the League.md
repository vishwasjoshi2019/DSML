# Q1. Matches of the League

# Problem Statement:

Write a query that reports all the possible matches of the league.

Note that every two teams play two matches with each other, with one team being the home_team once and the other time being the away_team.
Return the result table ordered by home_team and away_team in an ascending manner.
Sample Input:

Table: teams

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/b5184204-1fd8-4aab-a080-ebe6b9d7cd04)


Sample output:

![image](https://github.com/vishwasjoshi2019/DSML/assets/98074283/43f8c46b-10d1-4f14-a8eb-9fe695d963de)

Sample Explanation:

All the matches of the league are shown in the sample output table.

---


## Solution

```sql
SELECT t.team_name as home_team,
t1.team_name as away_team
FROM
teams t 
cross join
teams t1
where t.team_name!=t1.team_name
order by home_team,away_team

```
## Creator

This project was created by [Vishwas Joshi](https://github.com/vishwasjoshi2019).


[![GitHub](https://img.shields.io/badge/GitHub-%40vishwasjoshi2019-blue)](https://github.com/vishwasjoshi2019)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-%40vishwasjoshi2019-blue)](https://www.linkedin.com/in/vishwasjoshi2019/)
[![Gmail](https://img.shields.io/badge/Gmail-vishwasjoshi2019%40gmail.com-red)](mailto:vishwasjoshi2019@gmail.com)
[![Institute Email](https://img.shields.io/badge/Institute%20Email-vishwas.j%40iitgn.ac.in-red)](mailto:vishwas.j@iitgn.ac.in)
[![Instagram](https://img.shields.io/badge/Instagram-%40cursed__geek-orange)](https://www.instagram.com/cursed_geek/)
[![Twitter](https://img.shields.io/badge/Twitter-%40Vishwas79116150-blue)](https://twitter.com/Vishwas79116150)


