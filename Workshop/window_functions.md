## Window functions 

SQL allows us to partition data. 

Professor Slughorn is trying to understand Professor Snape's Potions curriculum. 
He wants to know the average number of ingredients in a potion by difficulty level. Can you help him find this? 

Let's start by looking at the known_ingredients field:
```sql
potter=# SELECT known_ingredients FROM potions WHERE known_ingredients IS NOT NULL LIMIT 5;
                           known_ingredients
-----------------------------------------------------------------------
 Newt spleens , Bananas
 Valerian sprigs, Aconite, Dittany
 Leaping Toadstools, Frog Brains, Runespoor eggs, Powdered dragon claw
 Scurvy grass, Lovage, Sneezewort
 Bursting mushrooms, Salamander blood, Wartcap powder
(5 rows)
```

This is a comma-separated list of items. Postgressql has a `string_to_array` [function](https://www.postgresql.org/docs/9.1/functions-array.html) which will help us work with this data. 

```sql
 potter=# SELECT string_to_array(known_ingredients, ',') FROM potions WHERE known_ingredients IS NOT NULL LIMIT 5;
                                  string_to_array
 ---------------------------------------------------------------------------------
  {"Newt spleens "," Bananas"}
  {"Valerian sprigs"," Aconite"," Dittany"}
  {"Leaping Toadstools"," Frog Brains"," Runespoor eggs"," Powdered dragon claw"}
  {"Scurvy grass"," Lovage"," Sneezewort"}
  {"Bursting mushrooms"," Salamander blood"," Wartcap powder"}
 (5 rows)

```

Now, we want to know the length of this array. We can use the `array_length` function to do this. 

 ```sql
potter=# SELECT string_to_array(known_ingredients, ','), array_length(string_to_array(known_ingredients, ','), 1) FROM potions WHERE known_ingredients IS NOT NULL LIMIT 5;
                                 string_to_array                                 | array_length
---------------------------------------------------------------------------------+--------------
 {"Newt spleens "," Bananas"}                                                    |            2
 {"Valerian sprigs"," Aconite"," Dittany"}                                       |            3
 {"Leaping Toadstools"," Frog Brains"," Runespoor eggs"," Powdered dragon claw"} |            4
 {"Scurvy grass"," Lovage"," Sneezewort"}                                        |            3
 {"Bursting mushrooms"," Salamander blood"," Wartcap powder"}                    |            3
(5 rows)
```

To find the average number of known_ingredients for all potions, we could do the following: 

```sql

potter=# SELECT avg(array_length(string_to_array(known_ingredients, ','), 1)) FROM potions WHERE known_ingredients IS NOT NULL LIMIT 5;
        avg
--------------------
 3.3095238095238095
(1 row)
```

However, we want to find the average by difficulty level. So we will 'partition' the data. 

```sql
SELECT name, difficulty_level,
array_length(string_to_array(known_ingredients, ','), 1) AS ingredient_count,
avg(array_length(string_to_array(known_ingredients, ','), 1)) OVER (PARTITION BY difficulty_level) AS average_ingredient_list
FROM potions
WHERE known_ingredients IS NOT NULL AND difficulty_level IS NOT NULL;
```

```sql
           name            |   difficulty_level   | ingredient_count | average_ingredient_list
---------------------------+----------------------+------------------+-------------------------
 Skele-Gro                 | Above second year    |                3 |      3.0000000000000000
 Ageing Potion             | Advanced             |                2 |      4.0000000000000000
 Draught of Living Death   | Advanced             |                6 |      4.0000000000000000
 Draught of Peace          | Advanced             |                4 |      4.0000000000000000
 Elixir to Induce Euphoria | Advanced             |                5 |      4.0000000000000000
 Felix Felicis             | Advanced             |                6 |      4.0000000000000000
 Herbicide Potion          | Advanced             |                4 |      4.0000000000000000
 Polyjuice Potion          | Advanced             |                7 |      4.0000000000000000
 Regeneration potion       | Advanced             |                3 |      4.0000000000000000
 Rudimentary body potion   | Advanced             |                2 |      4.0000000000000000
 Sleeping Draught          | Advanced             |                4 |      4.0000000000000000
 Wolfsbane Potion          | Advanced             |                1 |      4.0000000000000000
 Forgetfulness Potion      | Beginner             |                4 |      4.0000000000000000
 Cure for Boils            | Beginner             |                8 |      4.0000000000000000
 Fake protective potions   | Beginner             |                2 |      4.0000000000000000
 Fire Protection Potion    | Beginner             |                3 |      4.0000000000000000
 Swelling Solution         | Beginner             |                3 |      4.0000000000000000
 Wideye Potion             | Beginner             |                4 |      4.0000000000000000
 Wit-Sharpening Potion     | Moderate             |                3 |      3.0000000000000000
 Strengthening Solution    | Moderate to advanced |                2 |      2.0000000000000000
 Invigoration Draught      | O.W.L. level         |               10 |     10.0000000000000000
 Confusing Concoction      | Simple to moderate   |                3 |      3.0000000000000000
(22 rows)
```