## De-duping rows with `SELECT DISTINCT`

Sometimes we want to know all the possible values of a field in our data. We can use the `distinct` clause to ask sql to de-dupe (de-duplicate) our data for us. 

```sql
SELECT DISTINCT difficulty_level
FROM potions;
``` 

```sh 
  difficulty_level
----------------------

 O.W.L. level
 Above second year
 Beginner
 Advanced
 Simple to moderate
 Moderate
 Moderate to advanced
(8 rows)
```

note: by default psql displays `nulls` as empty strings. 
You can change this behaviour using `\pset`

 ```
potter=# \pset null (NULL)
Null display is "(NULL)".

```

Now run your query once again: 

```sh 
potter=# SELECT DISTINCT difficulty_level FROM potions;
   difficulty_level
----------------------
 (NULL)
 O.W.L. level
 Above second year
 Beginner
 Advanced
 Simple to moderate
 Moderate
 Moderate to advanced
(8 rows)
```

#### Exercise: 
1. Hagrid is doing research for a book he is writing on Magical Creatures. Find the distinct breeds of magical creatures in our table 
2. The muggle prime minister is furious after learning about magic, and is demanding a list of all types of magical spells. To pacify him, Cornelius Fudge decides to comply. Can you find all the distinct types of spells? 

[Solution](../solutions/select_distinct.md)

## Next Section 
[COUNT ing results](count.md)