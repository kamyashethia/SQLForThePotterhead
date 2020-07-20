## Time functions

In the characters table, we two fields 'birth' and 'death'. 
Looking at the types of those fields, it looks like the data is in the form of a `varchar`.

```sh 
potter=# SELECT name, birth
potter-# FROM characters
potter-# WHERE birth IS NOT NULL
potter-# LIMIT 2;
         name          |    birth
-----------------------+--------------
 Harry James Potter    | 31 July 1980
 Ronald Bilius Weasley | 1 March 1980
(2 rows)

``` 

A varchar isn't particularly useful for us to perform analysis, so let's convert this into a date: 

```sh 
potter=# SELECT name, DATE(birth)
potter-# FROM characters
potter-# WHERE birth IS NOT NULL
potter-# LIMIT 2;
         name          |    date
-----------------------+------------
 Harry James Potter    | 1980-07-31
 Ronald Bilius Weasley | 1980-03-01
(2 rows)

```

Now we can do all sorts of fun things with this data. Let's find out how old these characters would be as of today. 

```sql
potter=# SELECT name, DATE('2020-07-23') - DATE(birth) AS age_in_days
FROM characters
WHERE birth IS NOT NULL
LIMIT 2;
         name          | age_in_days
-----------------------+-------------
 Harry James Potter    |       14602
 Ronald Bilius Weasley |       14754
(2 rows)

```

Now the age in days isn't particularly easy for us humans to read. Luckily, we have access to a handy `age` function. 

```sql
potter=# SELECT name, age(DATE('2020-07-23'), DATE(birth))
FROM characters
WHERE birth IS NOT NULL
LIMIT 2;
         name          |           age
-----------------------+--------------------------
 Harry James Potter    | 39 years 11 mons 23 days
 Ronald Bilius Weasley | 40 years 4 mons 22 days
(2 rows)

``` 
#### Exercise: 
1. How old was Voldemort (Tom Marvolo Riddle) when Harry defeated him?
2. Try yourself: Find all the characters born in  the month of January

[Solution](../solutions/time_funcs.md)

## Next Section 
[Joins](joins.md)