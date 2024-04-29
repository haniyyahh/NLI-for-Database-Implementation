# NLI-for-Database-Implementation
An implementation of a Natural Language Interface for Relational Databases 
The WikiSQL-master directory contains the WikiSQL dataset we used in our project.

## Citation of WikiSQL
Victor Zhong, Caiming Xiong, and Richard Socher. 2017. Seq2SQL: Generating Structured Queries from Natural Language using Reinforcement Learning.
```
@article{zhongSeq2SQL2017,
  author    = {Victor Zhong and
               Caiming Xiong and
               Richard Socher},
  title     = {Seq2SQL: Generating Structured Queries from Natural Language using
               Reinforcement Learning},
  journal   = {CoRR},
  volume    = {abs/1709.00103},
  year      = {2017}
}
```


The test database we have created is a "MusicShop" that includes 5 tables: Albums, Songs, Customers, Orders, and OrderItems.
This test database was created before the implementation of the project skewed into a different direction.

## Some prior information
The .sql files must be run on a local MySQL server, as we work on eventually implementing the existing code into a remote server successfully.
Make sure the 'table-creations.sql' file is run first, then 'dummy-data.sql' to insert some records.
Then follow the instructions below to get the MySQL connector running and so you can run a few basic queries.


## How to install MySQL connector & create queries
1. Make sure MySQL server is running and open the terminal on your IDE
2. Input the following: 
   1. activate
   2. python
   3. pip install mysql-connector
3. Within the .py file, fill in the empty string parameters with your server's information:
   1. import mysql.connector
   2. db = mysql.connector.connect(), the parameters within the () are:
      1. host="",
      2. user="",
      3. passwd=""
      4. database="MusicShop"
4. Set a cursor with db.cursor()
5. Execute queries with cursor.execute()
6. Print the results
