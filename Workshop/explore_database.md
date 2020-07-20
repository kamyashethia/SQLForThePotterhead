## Let's explore the database 

#### List all tables 
Since we are using [psql](https://www.postgresql.org/docs/10/app-psql.html#:~:text=psql%20is%20a%20terminal%2Dbased,or%20from%20command%20line%20arguments.) we can issue a meta command to list the tables.

```sh 
potter=# \d
                    List of relations
 Schema |            Name             | Type  |  Owner
--------+-----------------------------+-------+----------
 public | characters                  | table | kshethia
 public | hogwarts_staff              | table | kshethia
 public | magical_creatures           | table | kshethia
 public | philosophers_stone_dialogue | table | kshethia
 public | potions                     | table | kshethia
 public | spells                      | table | kshethia
(6 rows)

```

#### Explore the table structure 
Now, we want to know what is the structure of these tables.

```sh
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

- A database (db) typically has a bunch of individual tables in it.
- The `potter` database has 6 tables present, each with its own structure. 
- The `spells` table has 5 columns of type `varchar`. You can think of this as a string field, the [docs](https://www.postgresql.org/docs/9.3/datatype-character.html) explain the nuances behind the type well.  

#### Exercise: 
Look at the schema of all the other tables in the `potter` database. 

[Solution](../solutions/list_all_schemas.md) 

## Next Section 
[SELECT ing data](select.md)