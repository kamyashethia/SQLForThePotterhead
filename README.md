# SQLForThePotterhead

#### Prerequisites 
######  install Postgress 
######  load data 

###### Basic Queries 
- list all tables 

```sh
potter=# \dt
           List of relations
 Schema |    Name    | Type  |  Owner
--------+------------+-------+----------
 public | characters | table | kshethia
 public | potions    | table | kshethia
 public | spells     | table | kshethia
(3 rows)
```
- describe schema of tables

```sh

potter=# \d characters
                       Table "public.characters"
    Column    |          Type          | Collation | Nullable | Default
--------------+------------------------+-----------+----------+---------
 id           | integer                |           |          |
 name         | character varying(50)  |           |          |
 gender       | character varying(20)  |           |          |
 job          | character varying(100) |           |          |
 house        | character varying(50)  |           |          |
 wand         | character varying(250) |           |          |
 patronus     | character varying(250) |           |          |
 species      | character varying(50)  |           |          |
 blood_status | character varying(50)  |           |          |
 hair_color   | character varying(50)  |           |          |
 eye_color    | character varying(50)  |           |          |
 loyalty      | character varying(250) |           |          |
 skills       | character varying(250) |           |          |
 birth        | character varying(100) |           |          |
 death        | character varying(100) |           |          |

potter=# \d potions
                           Table "public.potions"
      Column       |          Type          | Collation | Nullable | Default
-------------------+------------------------+-----------+----------+---------
 name              | character varying(50)  |           |          |
 known_ingredients | character varying(200) |           |          |
 effect            | character varying(150) |           |          |
 characteristics   | character varying(200) |           |          |
 difficulty_level  | character varying(50)  |           |          |

potter=# \d spells
                         Table "public.spells"
   Column    |          Type          | Collation | Nullable | Default
-------------+------------------------+-----------+----------+---------
 name        | character varying(50)  |           |          |
 incantation | character varying(50)  |           |          |
 type        | character varying(200) |           |          |
 effect      | character varying(250) |           |          |
 light       | character varying(50)  |           |          |

``` 
- See some data (basic SELECT)

Select all the data in a table: 

```sh
SELECT * FROM characters; 
```

Select limited number of rows: 
```sql 
SELECT * FROM characters LIMIT 2;
```

Select only certain columns: 

```sql 
SELECT name FROM characters LIMIT 5;
``` 

```sh 
 SELECT name, house from characters LIMIT 10;
```


#### COUNT 

#### ORDER AND GROUP

#### Timestamp functions

#### String parsing 

#### JOINS 

#### Window functions 




