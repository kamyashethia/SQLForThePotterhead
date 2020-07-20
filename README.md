# SQLForThePotterhead

## Prerequisites 
####  install Postgress 

On a mac, you can use homebrew for installation: 
- `brew install postgresql `
- `brew services start postgresql`
- `psql postgres`


On windows, you can follow the installation instructions [here](https://www.postgresql.org/download/windows/)

####  load data 

###### Create a new database 
`psql postgres`

```sh
postgres=# CREATE DATABASE  potter;
CREATE DATABASE

# We list all the databases present. I have some test databases 
postgres=# \l
                                 List of databases
        Name        |  Owner   | Encoding | Collate | Ctype |   Access privileges
--------------------+----------+----------+---------+-------+-----------------------
 postgres           | <YOUR_USERNAME> | UTF8     | C       | C     |
 potter             | <YOUR_USERNAME> | UTF8     | C       | C     |
 potter_test_load   | <YOUR_USERNAME> | UTF8     | C       | C     |
 potter_test_load_2 | <YOUR_USERNAME> | UTF8     | C       | C     |
 template0          | <YOUR_USERNAME> | UTF8     | C       | C     | =c/<YOUR_USERNAME>          +
                    |          |          |         |       | <YOUR_USERNAME>=CTc/<YOUR_USERNAME>
 template1          | <YOUR_USERNAME> | UTF8     | C       | C     | =c/<YOUR_USERNAME>          +
                    |          |          |         |       | <YOUR_USERNAME>=CTc/<YOUR_USERNAME>
(6 rows)

```

Exit (by typing out exit). 

###### Clone this repository: 
- `git clone https://github.com/kamyashethia/SQLForThePotterhead.git`
- ` cd SQLForThePotterhead`

There is a `potter_db.sql` in this filepath. 

###### Load data into our database:  
On the command line:
```sh
psql -d potter -f potter_db.sql
```

###### Check that the data made it in!
Connect using psql again
```sh
psql postgres
```

Connect to the database
```sh
\c potter
```

Make sure you have some tables: 
```sh
potter=# \dt
                    List of relations
 Schema |            Name             | Type  |  Owner
--------+-----------------------------+-------+----------
 public | characters                  | table | <YOUR_USERNAME>
 public | hogwarts_staff              | table | <YOUR_USERNAME>
 public | magical_creatures           | table | <YOUR_USERNAME>
 public | philosophers_stone_dialogue | table | <YOUR_USERNAME>
 public | potions                     | table | <YOUR_USERNAME>
 public | spells                      | table | <YOUR_USERNAME>
(6 rows)

```

## Workshop

Once you are done with setup, please navigate to the Workshop [README](Workshop/README.md). Happy Querying!