#### 1. Harry has been doing is schoolwork under the covers at night. Can you help him find a spell that could give him some light? 

```sql 
SELECT name, incantation, effect
FROM spells
WHERE lower(effect) LIKE '%light%';
```

```sh 
           name           | incantation  |         effect
--------------------------+--------------+------------------------
 Wand-Lighting Charm Duo  | Lumos Duo    | Focused beam of light
 Lumos Maxima             | Lumos Maxima | Produces bright light
 Lumos Solem Spell        | Lumos Solem  | Produces sunlight
 Wand-Extinguishing Charm | Nox          | Extinguishes wandlight
(4 rows)
```
#### 2. Can you find all the professors who have taught Defence Against the Dark Arts at hogwarts?

```sql 
SELECT name, subject_or_position
FROM hogwarts_staff
WHERE lower(subject_or_position) LIKE '%defence against the dark arts%';
```

```sh 
         name          |                  subject_or_position
-----------------------+--------------------------------------------------------
 Gilderoy Lockhart     |         Defence Against the Dark Arts
 Remus John Lupin      |         Defence Against the Dark Arts
 Alastor Moody         |         Defence Against the Dark Arts
 Quirinus Quirrell     |         Muggle Studies / Defence Against the Dark Arts
 Dolores Jane Umbridge |         Defence Against the Dark Arts / Headmistress
(5 rows)

```