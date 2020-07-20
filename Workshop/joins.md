### JOINS 

When I started to work with joins, I always looked at the following diagram: 

![join_image](images/sql_joins.png)
(credited URL [link](https://www.pinterest.com/pin/268527196507791080/))

I then diagram the data I want to collect, and looked at the diagram for the SQL. 

#### Inner Join

We want to display the names of characters, any pets they might have, and the house they are associated with. 

Let's look at where our data lives: 
- The `characters` table contains the `house` and character's `name` 
- The `magical_creatures` table contains the `owner` and magical creature's `name` 

Our data is present in two different tables, so we need to join it. 
To join data, we always look for a join 'key' which is a field that is present in both tables. 
For our case, the `character.name` field should equal the `magical_creatures.owner` field. 


Now let's think about what data we want by drawing a diagram: 

![magical_creatures_inner_join](images/magical_creatures_inner_join.png)

We only want the data at the intersection of the two tables. 
We can get this data by performing an inner join: 

```sql 
SELECT magical_creatures.name, characters.name, characters.house
FROM magical_creatures
JOIN characters
ON magical_creatures.owner = characters.name;
``` 


```sh 
    name     |                  name                   |   house
-------------+-----------------------------------------+------------
 Crookshanks | Hermione Jean Granger                   | Gryffindor
 Dobby       | Lucius Malfoy                           | Slytherin
 Fawkes      | Albus Percival Wulfric Brian Dumbledore | Gryffindor
 Hedwig      | Harry James Potter                      | Gryffindor
 Kreacher    | Sirius Black                            | Gryffindor
 Nagini      | Tom Marvolo Riddle                      | Slytherin
 Scabbers    | Ronald Bilius Weasley                   | Gryffindor
 Pigwidgeon  | Ronald Bilius Weasley                   | Gryffindor
 Hermes      | Percy Ignatius Weasley                  | Gryffindor
 Arnold      | Ginevra (Ginny) Molly Weasley           | Gryffindor
 Aragog      | Rubeus Hagrid                           | Gryffindor
 Buckbeak    | Rubeus Hagrid                           | Gryffindor
 Fluffy      | Rubeus Hagrid                           | Gryffindor
 Tenebrus    | Rubeus Hagrid                           | Gryffindor
(14 rows)
```
#### Exercise: 
1. Hogwarts wants to conduct an audit of all the points awarded by teachers, to make sure they aren't favoring any particular house.  Find the houses of all hogwarts staff.
2. While performing an audit of our database tables, the wizarding analyst discovers that we have missing data. Find all the teachers that are not present in the characters table. 
3. The Fat Lady's portrait is updating her knowledge to make sure only authorized folks have access to the Gryffindor dorm. Can we write a query that will inform us of all the students (past and present) and pets that are allowed in the Gryffindor dormitory? 

[solutions](../solutions/joins.md)

## Next Section 
[Partitioning data](window_functions.md)