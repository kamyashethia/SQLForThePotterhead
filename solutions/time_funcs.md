#### 1. How old was Voldemort (Tom Marvolo Riddle) when Harry defeated him?

```sql 
potter=# SELECT name, DATE(death) as death_day, DATE(birth) as birth_day, age(DATE(death),DATE(birth))
potter-# FROM characters
potter-# WHERE name = 'Tom Marvolo Riddle';
        name        | death_day  | birth_day  |          age
--------------------+------------+------------+------------------------
 Tom Marvolo Riddle | 1998-05-02 | 1926-12-31 | 71 years 4 mons 2 days
(1 row)
```

#### 2. Try yourself: Find all the characters born in  the month of January

```sql 
potter-# WHERE date_part('month', DATE(birth)) = 1;
       name        |      birth
-------------------+-----------------
 Gilderoy Lockhart | 26 January 1964
 Severus Snape     | 9 January 1960
(2 rows)

```