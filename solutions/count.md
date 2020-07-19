#### 1. The Ministry of Magic wants to conduct an owl census. They want to know how many Owls they have counted so far. Can you get this information from the magical_creatures table? 

```sql 
SELECT count(*)
FROM magical_creatures
WHERE breed = 'Owl';
```
