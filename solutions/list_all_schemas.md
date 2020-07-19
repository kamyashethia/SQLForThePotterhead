```sh

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

potter=# \d hogwarts_staff
                         Table "public.hogwarts_staff"
       Column        |          Type           | Collation | Nullable | Default
---------------------+-------------------------+-----------+----------+---------
 name                | character varying(50)   |           |          |
 subject_or_position | character varying(100)  |           |          |
 background          | character varying(1000) |           |          |

potter=# \d magical_creatures
                Table "public.magical_creatures"
 Column |         Type          | Collation | Nullable | Default
--------+-----------------------+-----------+----------+---------
 name   | character varying(50) |           |          |
 breed  | character varying(50) |           |          |
 owner  | character varying(50) |           |          |

potter=# \d philosophers_stone_dialogue
              Table "public.philosophers_stone_dialogue"
  Column   |          Type           | Collation | Nullable | Default
-----------+-------------------------+-----------+----------+---------
 character | character varying(100)  |           |          |
 dialogue  | character varying(1000) |           |          |

potter=# \d potions
                           Table "public.potions"
      Column       |          Type          | Collation | Nullable | Default
-------------------+------------------------+-----------+----------+---------
 name              | character varying(50)  |           |          |
 known_ingredients | character varying(200) |           |          |
 effect            | character varying(150) |           |          |
 characteristics   | character varying(200) |           |          |
 difficulty_level  | character varying(50)  |           |          |

potter=# \d spells
                         Table "public.spells"
   Column    |          Type          | Collation | Nullable | Default
-------------+------------------------+-----------+----------+---------
 name        | character varying(50)  |           |          |
 incantation | character varying(50)  |           |          |
 type        | character varying(200) |           |          |
 effect      | character varying(250) |           |          |
 light       | character varying(50)  |           |          |

```