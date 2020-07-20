## SELECT -ing data from tables

#### Select all the data from a table 

```sql
SELECT *
FROM magical_creatures;
```
The `*` tells SQL to select all the fields (`name`, `breed` and `owner`) from the `magical_creatures` table

```sh
    name     |       breed       |                  owner
-------------+-------------------+-----------------------------------------
 Crookshanks | Cat               | Hermione Jean Granger
 Dobby       | House Elf         | Lucius Malfoy
 Fawkes      | Phoenix           | Albus Percival Wulfric Brian Dumbledore
 Firenze     | Centuar           |
 Griphook    | Goblin            |
 Hedwig      | Owl               | Harry James Potter
 Hokey       | House Elf         | Hepzibah Smith
 Kreacher    | House Elf         | Sirius Black
 Nagini      | Snake             | Tom Marvolo Riddle
 Peeves      | Poltergeist       |
 Winky       | House Elf         | Barty Crouch Jr
 Scabbers    | Rat               | Ronald Bilius Weasley
 Pigwidgeon  | Owl               | Ronald Bilius Weasley
 Hermes      | Owl               | Percy Ignatius Weasley
 Errol       | Owl               | Weasley family
 Arnold      | Pygmy Puff        | Ginevra (Ginny) Molly Weasley
 Aragog      | Spider            | Rubeus Hagrid
 Buckbeak    | Hippogriff        | Rubeus Hagrid
 Fluffy      | Dog(three headed) | Rubeus Hagrid
 Tenebrus    | Thestral          | Rubeus Hagrid
(20 rows)
```

#### Only select certain fields from a table

```sql

SELECT name 
FROM hogwarts_staff;
```

This tells SQL to only select the `name` field from the `hogwarts` staff table. 

```sh 
                  name
-----------------------------------------
 Cuthbert Binns
 Charity Burbage
 Amycus Carrow
 Alecto Carrow
 Albus Percival Wulfric Brian Dumbledore
 Argus Filch
 Firenze
 Filius Flitwick
 Wilhelmina Grubbly-Plank
 Rubeus Hagrid
 Rolanda Hooch
 Silvanus Kettleburn
 Gilderoy Lockhart
 Remus John Lupin
 Minerva McGonagall
 Alastor Moody
 Irma Pince
 Poppy Pomfrey
 Quirinus Quirrell
 Aurora Sinistra
 Horace Eugene Flaccus Slughorn
 Severus Snape
 Pomona Sprout
 Sybill Patricia Trelawney
 Dolores Jane Umbridge
 Septima Vector
(26 rows)
```
#### Add a LIMIT 

```sql
SELECT name, job
FROM characters
LIMIT 2;
```
If you have a large table (with hundreds of thousands of rows) you often don't want to return all the rows. 
`SQL` has a built in `LIMIT` clause which will let you specify how many rows you want returned. 

```sh 
         name          |   job
-----------------------+---------
 Harry James Potter    | Student
 Ronald Bilius Weasley | Student
(2 rows)
```
Note: there is no guarantee of ordering in a limit clause. You might see different rows returned. 

#### Select data that meets a certain with the WHERE clause

``` SQL 
SELECT name, house
FROM characters
WHERE house = 'Slytherin'
LIMIT 5;
```
Adding a `WHERE` clause will help filter results. 
```sh 
          name          |   house
------------------------+-----------
 Salazar Slytherin      | Slytherin
 Regulus Arcturus Black | Slytherin
 Bloody Baron           | Slytherin
 Severus Snape          | Slytherin
 Tom Marvolo Riddle     | Slytherin
(5 rows)

```

You can specify multiple conditions. 

```sql
SELECT name, house, job
FROM characters
WHERE house = 'Slytherin' AND job = 'Student';
```
The above query will return all the characters who are in Slytherin and who are listed as students. 

```sh 
           name           |   house   |   job
--------------------------+-----------+---------
 Tom Marvolo Riddle       | Slytherin | Student
 Graham Montague          | Slytherin | Student
 Draco Malfoy             | Slytherin | Student
 Vincent Crabbe           | Slytherin | Student
 Gregory Goyle            | Slytherin | Student
 Pansy Parkinson          | Slytherin | Student
 Blaise Zabini            | Slytherin | Student
 Theodore Nott            | Slytherin | Student
 Millicent Bulstrode      | Slytherin | Student
 Marcus Flint             | Slytherin | Student
 Albus Severus Potter     | Slytherin | Student
 Scorpius Hyperion Malfoy | Slytherin | Student
(12 rows)
```

You might notice that ` Severus Snape ` is absent from the results.
Let's look at what his job is listed as in our table. 

```sql
 SELECT name, house, job
FROM characters
WHERE name = 'Severus Snape';
```

```sh 
     name      |   house   |                   job
---------------+-----------+------------------------------------------
 Severus Snape | Slytherin | Professor of Potions | Head of Slytherin
(1 row)
```

#### Exercise: 

1. Hermione is trying to study for her first year final exams. Find the names of all the potions that are a beginners difficulty level to help her study
2. Professor Quirrell has a hard time remembering things -- find the subject that Professor “Septima Vector” teaches at Hogwarts 
3. Who says :`There will be no foolish wand-waving or silly incantations in this class.` in the first movie 

[Solution](../solutions/select_ans.md) 


## Next Section
[De-duping rows](select_distinct.md) 
 