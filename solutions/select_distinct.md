#### 1. Hagrid is doing research for a book he is writing on Magical Creatures. Find the distinct breeds of magical creatures in our table 

```sql 
SELECT DISTINCT breed
FROM magical_creatures;
```

```sh 
      breed
-------------------
 Poltergeist
 House Elf
 Cat
 Pygmy Puff
 Owl
 Rat
 Centuar
 Goblin
 Phoenix
 Thestral
 Spider
 Dog(three headed)
 Snake
 Hippogriff
(14 rows)

```
#### 2. The muggle prime minister is furious after learning about magic, and is demanding a list of all types of magical spells. To pacify him, Cornelius Fudge decides to comply. Can you find all the distinct types of spells? 

```sql 
SELECT DISTINCT type
FROM spells;
```

```sh 
               type
-----------------------------------
 Charm, Transfiguration
 Charm, Counter-charm
 Transfiguration, Jinx
 Counter-spell
 Counter-charm
 Charm
 Transfiguration
 Transfiguration spell
 Charm, Conjuration
 Transfiguration jinx
 Spell
 Hex, Counter-curse
 Patented Charm
 Untransfiguration
 Healing spell, Charm
 Healing spell, Vanishment
 Vanishment
 Curse
 Dark charm
 Conjuration, Charm
 Jinx, Hex
 Conjuration
 Transfiguration Jinx
 Transformation
 Jinx
 Healing spell, Counter-curse
 Curse, Jinx
 Healing Spell, Charm, Conjuration
 Charm
 Dark Arts
 Hex
 Hex
 Transportation
 Conjuration, Jinx
 Counter-jinx
(35 rows)
```