A list of SQL queries that can be run. Grouped by the SQL clause it highlights. 
The idea is to use these to generate fun harry potter themed questions 



#### COUNT
```sql
SELECT count(*) from characters;

SELECT count(*) from characters WHERE house='Gryffindor';

select COUNT(*) FROM magical_creatures where breed='Owl';
```

#### SELECT DISTINCT 

```sql
SELECT distinct house from characters; 

select distinct loyalty from characters;

select distinct difficulty_level from potions;

select distinct type from spells;

select distinct breed from magical_creatures;
```

#### String functions 
#### LIKE 

```sql 
SELECT * from spells where effect LIKE '%death%';

SELECT * from spells where effect LIKE '%light%';
```

###### LOWER

```sql 
SELECT * from spells where lower(incantation) = 'wingardium leviosa';
```


#### OR 

```sql

SELECT * from spells WHERE lower(type) = 'dark arts' OR lower(type) = 'dark charm';
# same query below with like:
SELECT * from spells WHERE lower(type) LIKE 'dark%';
```

#### NULL 
```
SELECT count(*) from characters WHERE house IS NULL;

SELECT count(*) from characters WHERE house IS NOT NULL;

SELECT distinct house from characters;
SELECT distinct house from characters WHERE house is not null;
```


#### COUNT with GROUP 

```sql
SELECT house, COUNT(*) from characters GROUP BY 1 ORDER BY 1;

SELECT house, COUNT(*) from characters WHERE house is not null GROUP BY 1 ORDER BY 1;

SELECT light, count(*) from spells GROUP BY 1 ORDER BY 2 DESC;

```

lines per character :

```sql 
SELECT trim(character), count(*)  from philosophers_stone_dialogue GROUP BY 1 ORDER BY 2 DESC;
```

#### Timestamp functions

```sh 

SELECT DATE(birth)  from characters WHERE lower(birth) NOT LIKE 'late%' LIMIT 5;
SELECT DATE(death)  from characters WHERE lower(death) NOT LIKE 'late%' LIMIT 5;

``` 

How old was character X when they died? 

```sql

SELECT name, DATE(death) as death_day, DATE(birth) as birth_day, age(DATE(death),DATE(birth))  from characters WHERE birth IS NOT NULL and death IS NOT NULL;
```
All characters born in a month? 
```sql 

SELECT date_part('month', DATE(birth)), COUNT(*) from characters  WHERE birth IS NOT NULL GROUP BY 1 ORDER BY 1;

SELECT to_char(DATE(birth), 'Month'), COUNT(*) from characters  WHERE birth IS NOT NULL GROUP BY 1 ORDER BY 1;
```

All characters born in January: 
```sql
SELECT name from characters WHERE date_part('month', DATE(birth)) = 1;
```
#### Joins: 

- inner join 

```sql

SELECT magical_creatures.name, characters.name, characters.house  FROM magical_creatures JOIN characters ON magical_creatures.owner = characters.name;
```

```sql
SELECT characters.name, characters.house, hogwarts_staff.subject_or_position FROM hogwarts_staff JOIN characters on hogwarts_staff.name = characters.name;
```

- left join 
```sql

SELECT magical_creatures.name, characters.name, characters.house  FROM characters LEFT JOIN magical_creatures ON magical_creatures.owner = characters.name WHERE house='Gryffindor';
```

- right join 
```sql

SELECT magical_creatures.name, characters.name, characters.house  FROM magical_creatures RIGHT  JOIN characters ON magical_creatures.owner = characters.name WHERE house='Gryffindor';
```

- outer join 

```sql 
SELECT hogwarts_staff.name,  hogwarts_staff.subject_or_position FROM hogwarts_staff LEFT JOIN characters on hogwarts_staff.name = characters.name WHERE characters.name IS NULL;
```

#### Row over partition (window functions)

idea: avg list of ingredients of potions by difficulty level

```sql 
SELECT known_ingredients, array_length(string_to_array(known_ingredients, ','), 1) as number_of_ingredient FROM potions WHERE KNOWN_INGREDIENTS IS NOT NULL AND difficulty_level IS NOT NULL;

 WITH ingredient_counts_by_difficulty AS (SELECT difficulty_level, array_length(string_to_array(known_ingredients, ','), 1) as number_of_ingredient FROM potions WHERE KNOWN_INGREDIENTS IS NOT NULL AND difficulty_level IS NOT NULL)
SELECT avg(number_of_ingredient) from ingredient_counts_by_difficulty WHERE difficulty_level='Advanced';

WITH ingredient_counts_by_difficulty AS (SELECT difficulty_level, array_length(string_to_array(known_ingredients, ','), 1) as number_of_ingredient FROM potions WHERE KNOWN_INGREDIENTS IS NOT NULL AND difficulty_level IS NOT NULL)
SELECT difficulty_level, avg(number_of_ingredient) OVER (PARTITION BY difficulty_level) FROM ingredient_counts_by_difficulty;

SELECT difficulty_level, avg(array_length(string_to_array(known_ingredients, ','), 1)) OVER (PARTITION BY difficulty_level) FROM potions WHERE KNOWN_INGREDIENTS IS NOT NULL AND difficulty_level IS NOT NULL
```
 
#### Ideas: 

count of known ingredients with potions (maybe to figure out the price?)
count of dialogue by characters in movie -- who has the most words in movie 1 
