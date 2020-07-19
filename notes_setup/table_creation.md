#### Characters 

```sh 
potter=# CREATE TABLE characters (id int, name varchar(50), gender varchar(20), job varchar(100), house varchar(50), wand varchar(250),  patronus varchar(250), species varchar(50), blood_status varchar(50), hair_color varchar(50), eye_color varchar(50), loyalty varchar(250), skills varchar(250), birth varchar(100), death varchar(100) );
CREATE TABLE
potter=# COPY characters FROM '/Users/kshethia/development/SQLForThePotterhead/data/Characters.csv' DELIMITER ';' CSV HEADER;
COPY 140

potter=# ALTER TABLE characters DROP COLUMN gender;
ALTER TABLE
potter=# \d characters
                       Table "public.characters"
    Column    |          Type          | Collation | Nullable | Default
--------------+------------------------+-----------+----------+---------
 id           | integer                |           |          |
 name         | character varying(50)  |           |          |
 job          | character varying(100) |           |          |
 house        | character varying(50)  |           |          |
 wand         | character varying(250) |           |          |
 patronus     | character varying(250) |           |          |
 species      | character varying(50)  |           |          |
 blood_status | character varying(50)  |           |          |
 hair_color   | character varying(50)  |           |          |
 eye_color    | character varying(50)  |           |          |
 loyalty      | character varying(250) |           |          |
 skills       | character varying(250) |           |          |
 birth        | character varying(100) |           |          |
 death        | character varying(100) |           |          |

```

#### Spells 

```sh

potter=# CREATE TABLE spells (name varchar(50), incantation varchar(50), type varchar(200), effect varchar(250), light varchar(50));
CREATE TABLE
potter=# COPY spells FROM '/Users/kshethia/development/SQLForThePotterhead/data/Spells.csv' DELIMITER ';' CSV HEADER;
COPY 301
potter=# \d spells
                         Table "public.spells"
   Column    |          Type          | Collation | Nullable | Default
-------------+------------------------+-----------+----------+---------
 name        | character varying(50)  |           |          |
 incantation | character varying(50)  |           |          |
 type        | character varying(200) |           |          |
 effect      | character varying(250) |           |          |
 light       | character varying(50)  |           |          |

potter=#

```

#### Potions 

```sh
potter=# CREATE TABLE potions (name varchar (50), known_ingredients varchar(200), effect varchar(150), characteristics varchar(200), difficulty_level varchar(50));
CREATE TABLE
potter=# COPY potions FROM '/Users/kshethia/development/SQLForThePotterhead/data/Potions.csv' DELIMITER ';' CSV HEADER;
COPY 72
potter=# \d potions
                           Table "public.potions"
      Column       |          Type          | Collation | Nullable | Default
-------------------+------------------------+-----------+----------+---------
 name              | character varying(50)  |           |          |
 known_ingredients | character varying(200) |           |          |
 effect            | character varying(150) |           |          |
 characteristics   | character varying(200) |           |          |
 difficulty_level  | character varying(50)  |           |          |

potter=#

```

#### Philosophers stone dialogue 
```sh
CREATE TABLE  philosophers_stone_dialogue (character varchar(100), dialogue varchar(1000));
COPY philosophers_stone_dialogue FROM '/Users/kshethia/development/SQLForThePotterhead/data/movie_one_dialogue.csv' DELIMITER ';' CSV HEADER;

```

#### magical creatures 
```sh
CREATE TABLE magical_creatures(name varchar(50), breed varchar(50), owner varchar(50));
COPY magical_creatures FROM '/Users/kshethia/development/SQLForThePotterhead/data/MagicalCreatures.csv' DELIMITER ';' CSV HEADER;
```

#### hogwarts teachers

```sh
CREATE TABLE hogwarts_staff (name varchar(50), subject_or_position varchar(100), background varchar(1000));
COPY hogwarts_staff FROM '/Users/kshethia/development/SQLForThePotterhead/data/HogwartsStaff.csv' DELIMITER '|' CSV HEADER;

```
