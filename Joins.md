Querying data with SQL can feel magical, and JOINS are one of the things that feel the most mogical to me. For the longest time, I would look for a lovely image on the internet that visualized joins, pick the join I wanted, and write the query. 
Luckily, we can learn some of the magic behind SQL joins! 

In this article, we will cover: 
1. Left Joins 
2. Inner Joins 
3. Outer Joins
4. Cross Joins 


1. Left Joins 

Before we talk about left joins, lets talk about the pets of the wizarding world. Students at Hogwarts are allowed to bring with them an owl OR a cat OR a toad. 

Let's consider a table to hold some of the first year students at Hogwarts during Harry's year. This table will have two columns: 
1. `id` : A unique id used to identify a wizarding student 
2. `name` : The student's full name 

Here's the table, populated with some students: 

 id |        name        
---- | --------------------
  1 | Neville Longbotton
  2 | Ronald Weasley
  3 | Harry Potter
  4 | Draco Malfoy
  5 | Seamus Finnigan
  6 | Hermione Granger
  
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
  

  
