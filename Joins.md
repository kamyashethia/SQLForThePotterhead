Querying data with SQL can feel magical, and JOINS are one of the things that feel the most magical to me. For the longest time, I would look for a lovely image on the internet that visualized joins, pick the join I wanted, and write the query. 

In this article, I'm going to explain the magic behind joins. 

We will cover: 
1. Left Joins 
2. Inner Joins 
3. Outer Joins
4. Cross Joins 


1. Left Joins 

Before we talk about left joins, lets talk about the pets of the wizarding world. Students at Hogwarts are allowed to bring with them an owl OR a cat OR a toad. 

Let's consider a table to hold some of the first year students at Hogwarts during Harry's year. This table will have two columns: 
1. `id` : A unique id used to identify a wizarding student 
2. `name` : The student's full name 
3. `house` : Their hogwarts house 

Here's the table, populated with some students: 

 id |        name        |   house    
----|--------------------|------------
  1 | Neville Longbotton | Gryffindor
  2 | Ronald Weasley     | Gryffindor
  3 | Harry Potter       | Gryffindor
  4 | Draco Malfoy       | Slytherin
  5 | Seamus Finnigan    | Gryffindor
  6 | Hermione Granger   | Gryffindor
  
  Now, let's create a table to hold information about the student's pets. The table will hold the following information: 
  1. `id`: Unique id used to identify the pet 
  2. `name` : The name of the pet 
  3. `species`: The species of the pet. 
  4. `owner_id`: The id of the owner of the pet. In general, `pet.owner_id` equals `wizard.id`. In database-ey terms, we think of this as a foreign key. 
  
  Here is a table with some pets.
  
  id |    name     | species | owner_id 
----|-------------|---------|----------
  2 | Trevor      | toad    |        1
  1 | Scabbers    | rat     |        2
  3 | Hedwig      | owl     |        3
  4 | Crookshanks | cat     |        6
  5 | unkown      | owl     |        4
  6 | Norbert     | Dragon  |      100
  
  Let's understand this table, by looking at the pet with id = 3. The pet's name is Hedwig, and it's owner_id is 3. Looking at the `wizard` table, Harry Potter has an id of 3. The data indicates that Harry Potter owns Hedwig, which is what we would expect. 

A student's pet is allowed in their house dormitory. 

## Can we write a query that will inform us of all the students and pets that are allowed in the Gryffindor dormitory?

Let's break down the requirements. We need: 
1. All the students who are allowed in the Gryffindor dormitory
2. Any pet's that belong to students from Gryffindor

We can look at the student's table and get all the wizards who belong to Gryffindor. However, looking at the pet's table, we don't know which house the pet's owner belongs to. But we do know that `pet.owner_id` from the pet table equals `wizard.id` from the wizards table. 

  We need to combine this information, and so we will use a `JOIN`. Let's start by using a set diagram to understand what data we need: 
  ![Venn diagram for join](left_join2.png)
  
  The 'left' join refers to the data on the 'left hand size'. In our example, this is the gryffindor wizards. 

Now, let's try writing some SQL. The following sequence provides a step-by-step breakdown of how I write joins: 

1. Start by extracting the data we need from the `wizards` table. We want to filter the data to the student's who are in the Gryffindor house. We can do that with a `WHERE` clause. 

```postgres

postgres=# `SELECT * FROM wizard WHERE house = 'Gryffindor'` 

id |        name        |   house    
----|--------------------|------------
  1 | Neville Longbotton | Gryffindor
  2 | Ronald Weasley     | Gryffindor
  3 | Harry Potter       | Gryffindor
  5 | Seamus Finnigan    | Gryffindor
  6 | Hermione Granger   | Gryffindor
  
```
  
The query returned every student in the table except Malfoy, who is in Slytherin. 
  
2. I want to write a join that combines this data with the pets table. 

```sh 
postgres=# SELECT * FROM wizard WHERE house = 'Gryffindor' LEFT JOIN pet ON wizard.id = pet.owner_id;
ERROR:  syntax error at or near "LEFT"
LINE 1: SELECT * FROM wizard WHERE house = 'Gryffindor' LEFT JOIN pe...
```

Oh no! It looks like I got a syntax error. This is a syntax error, and looking at documentation, I see that the `WHERE` clause has to be at the end. Let's modify our query to confirm that our syntax is correct. 

```sh 

postgres=# SELECT * FROM wizard LEFT JOIN pet ON wizard.id = pet.owner_id WHERE house = 'Gryffindor'; 
 id |        name        |   house    | id |    name     | species | owner_id 
----+--------------------+------------+----+-------------+---------+----------
  1 | Neville Longbotton | Gryffindor |  2 | Trevor      | toad    |        1
  2 | Ronald Weasley     | Gryffindor |  1 | Scabbers    | rat     |        2
  3 | Harry Potter       | Gryffindor |  3 | Hedwig      | owl     |        3
  6 | Hermione Granger   | Gryffindor |  4 | Crookshanks | cat     |        6
  5 | Seamus Finnigan    | Gryffindor |    |             |         |         
(5 rows)
```

Yay! I see all the student's in Gryffindor, and all the appropriate pets. Let's now filter down to only select the table fields we need. 

```sh

postgres=# postgres=# SELECT wizard.name, pet.name FROM wizard LEFT JOIN pet ON wizard.id = pet.owner_id WHERE house = 'Gryffindor';
        name        |    name     
--------------------+-------------
 Neville Longbotton | Trevor
 Ronald Weasley     | Scabbers
 Harry Potter       | Hedwig
 Hermione Granger   | Crookshanks
 Seamus Finnigan    | 
(5 rows)

```
 
When I'm trying to understand SQL, I find that adding indentation is really important. Let's indent our query, and analyze it by line  
```sql  
  1. SELECT wizard.name, pet.name
  2. FROM wizard
  3. LEFT JOIN pet
  4. ON wizard.id = pet.owner_id
  5. WHERE house = 'Gryffindor';
  
```

1. `SELECT wizard.name, pet.name` : The SELECT clause specifies the fields we want to see in our results. We're only interested in the wizard's name, and the pet's name for our case. 
2. `FROM wizard` : The first table, or the table on the left for our join 
3. `LEFT JOIN pet`: the `LEFT JOIN` clause 
4. `ON wizard.id = pet.owner_id` : We specify what we are joining ON. This is generally a field present in both tables, that has a foreign-key-esque relationship 
5. `WHERE house = 'Gryffindor'`: We filter down our results to only include rows where the wizard's house is in Gryffindor. We don't need to specify `wizard.house`, because the `pet` table does not include that column.  
  
