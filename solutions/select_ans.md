#### 1. Hermione is trying to study for her first year final exams. Find the names of all the potions that are a `Beginner` difficulty level to help her study.

```sql 
SELECT name, difficulty_level
FROM potions
WHERE difficulty_level = 'Beginner';
```

```sh 
          name           | difficulty_level
-------------------------+------------------
 Fire Protection Potion  | Beginner
 Cure for Boils          | Beginner
 Fake protective potions | Beginner
 Forgetfulness Potion    | Beginner
 Swelling Solution       | Beginner
 Wideye Potion           | Beginner
(6 rows)
```

#### 2. Professor Quirrell has a hard time remembering things -- find the subject that Professor `Septima Vector` teaches at Hogwarts 
```sql 
SELECT name, subject_or_position
FROM hogwarts_staff
WHERE name = 'Septima Vector';
```

```sh 
      name      | subject_or_position
----------------+---------------------
 Septima Vector |         Arithmancy
(1 row)
```

#### 3. Who says :`There will be no foolish wand-waving or silly incantations in this class.` in the first movie 

```sql 
SELECT *
FROM philosophers_stone_dialogue
WHERE dialogue = 'There will be no foolish wand-waving or silly incantations in this class.';
```

```sh 
character |                                 dialogue
-----------+---------------------------------------------------------------------------
 Snape     | There will be no foolish wand-waving or silly incantations in this class.
(1 row)
```