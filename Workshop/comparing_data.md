## Comparing data in SQL

#### NULL equality 
```sql 
SELECT *
FROM magical_creatures
WHERE owner IS NULL;
```

```sh 
   name   |    breed    | owner
----------+-------------+--------
 Firenze  | Centuar     | (NULL)
 Griphook | Goblin      | (NULL)
 Peeves   | Poltergeist | (NULL)
(3 rows)

```

Note: we do not use `=` to check for `NULL` equality in SQL. 
The following SQL will return no results: `SELECT * FROM magical_creatures WHERE owner = NULL;`
[Here](https://www.postgresqltutorial.com/postgresql-is-null/#:~:text=NULL%20is%20not%20a%20value,which%20means%20an%20unknown%20result.) is some documentation on NULL values.

#### Case sensitivity

All string comparisons are case sensitive in SQL. 

Let's look at the following two queries: 
```sql 
potter=# SELECT * from spells where incantation = 'wingardium leviosa';
 name | incantation | type | effect | light
------+-------------+------+--------+-------
(0 rows)

potter=# SELECT * from spells where incantation = 'Wingardium Leviosa';
       name       |    incantation     | type  |      effect       | light
------------------+--------------------+-------+-------------------+-------
 Levitation Charm | Wingardium Leviosa | Charm | Makes objects fly | None
(1 row)
```

The first one does not return any results. To compare values while ignoring their case, we can use the `LOWER` function. 

```sql 
SELECT *
FROM spells
WHERE lower(incantation) = 'wingardium leviosa';
```
This will return the desired row:
```sh 
       name       |    incantation     | type  |      effect       | light
------------------+--------------------+-------+-------------------+-------
 Levitation Charm | Wingardium Leviosa | Charm | Makes objects fly | None
(1 row)
```

#### using LIKE 
Sometimes, we don't want to check for exact equality. 
The `LIKE` clause comes in handy for this type of query. 

```sql 
SELECT *
FROM spells
WHERE effect LIKE '%death%';
```
I read `'%death%'` as 'having death somewhere in the field'. The `%` characters signify that we are allowing characters to come before and after our string. 

The query returns the following results:
```sql 
potter=# SELECT name, incantation, effect from spells where lower(effect) LIKE '%death%';
          name          |  incantation  |                         effect
------------------------+---------------+---------------------------------------------------------
 Killing Curse          | Avada Kedavra | Instantaneous death
 Transmogrifian Torture | Unknown       | Tortures, possibly by transfiguring the target to death
(2 rows)

```

Let's modify the query slightly to see what the `%` is doing: 

```sh 
potter=# SELECT name, incantation, effect from spells where lower(effect) LIKE '%death%';
          name          |  incantation  |                         effect
------------------------+---------------+---------------------------------------------------------
 Killing Curse          | Avada Kedavra | Instantaneous death
 Transmogrifian Torture | Unknown       | Tortures, possibly by transfiguring the target to death
(2 rows)

potter=# SELECT name, incantation, effect from spells where lower(effect) LIKE 'death%';
 name | incantation | effect
------+-------------+--------
(0 rows)

potter=# SELECT name, incantation, effect from spells where lower(effect) LIKE '%death';
          name          |  incantation  |                         effect
------------------------+---------------+---------------------------------------------------------
 Killing Curse          | Avada Kedavra | Instantaneous death
 Transmogrifian Torture | Unknown       | Tortures, possibly by transfiguring the target to death
(2 rows)

potter=# SELECT name, incantation, effect from spells where lower(effect) LIKE 'death';
 name | incantation | effect
------+-------------+--------
(0 rows)

```
#### Exercise: 
1. Harry has been doing is schoolwork under the covers at night. Can you help him find a spell that could give him some light? 
2. Can you find all the professors who have taught Defence Against the Dark Arts at hogwarts?

[Solution](../solutions/comparing_data.md)
