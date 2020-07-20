## GROUP -ing and ORDER -ing data 

SQL lets us GROUP rows that have the same value.
This is a technique I use a lot to find the counts of fields. 

Let's try and find the counts of spells by the color of the light they emit: 

```sql 
SELECT light, count(*) 
FROM spells
WHERE light IS NOT NULL
GROUP BY light
ORDER BY count DESC ;
```
Let's step through this query to understand it -- 
I always start looking from the `FROM` clause. 

- `FROM spells` -- from the table spells 
- `WHERE light IS NOT NULL` -- I want to select all the rows where the light field is not NULL
- `GROUP BY light` -- I want to group this data by the `light` field
- `SELECT light, count(*)` -- I then want to count the number of rows within these groups 
- `ORDER BY count DESC` -- I want to return this data ordered by the counts, returning the rows with the highest counts first

#### Exercise: 
1. After the wizarding war, the Ministry of Education requires that schools report the number of wizards in each school house, past and present. Can you help find the counts of wizards by house from the characters table?
2. Can you find out the name of the character with the most lines in the 1st harry potter movie?

[Solution](../solutions/group_order.md)

## Next Section 
[Time functions](time_functions.md)