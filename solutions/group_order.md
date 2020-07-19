#### 1. After the wizarding war, the Ministry of Education requires that schools report the number of wizards in each school house, past and present. Can you help find the counts of wizards by house from the characters table?

```sql 
SELECT house, COUNT(*) AS student_count
FROM characters
WHERE house IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;
```
Note: I've added an alias to the `count` function. This controls the how the field is deplayed in the resultant table headers. 
I also use numbers to refer to fields in the `GROUP` and `ORDER` clause. `GROUP BY 1` can be translated to 'group by the first field', which in this case is `house`. 

```sh 

            house             | student_count
------------------------------+---------------
 Gryffindor                   |            38
 Slytherin                    |            28
 Ravenclaw                    |            18
 Hufflepuff                   |            13
 Beauxbatons Academy of Magic |             3
 Durmstrang Institute         |             1
(6 rows)
```
#### 2. Can you find out the name of the character with the most lines in the 1st harry potter movie?

```sql 
SELECT character, COUNT(*)
FROM philosophers_stone_dialogue
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;
```

Note: I'm limiting the number of rows returned, since I only need to know the name of the character with the most lines. 

```sh 
 character | count
-----------+-------
 Harry     |   155
(1 row)
```