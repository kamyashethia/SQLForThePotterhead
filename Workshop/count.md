## COUNT -ing the number of results 

```sql 
SELECT count(*)
FROM characters;
```
Here we tell SQL to count all the rows in the `characters` table 

```sh 
 count
-------
   140
(1 row)

```

You can add combine this with a `WHERE` clause to filter down the results. 

```sql
SELECT count(*)
FROM characters
WHERE house='Gryffindor';
```

```sh 
 count
-------
    38
(1 row)
```

#### Exercise: 
1. The Ministry of Magic wants to conduct an owl census. They want to know how many Owls they have counted so far. Can you get this information from the magical_creatures table? 

[Solution](../solutions/count.md)
