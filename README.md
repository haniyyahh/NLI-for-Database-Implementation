# NLI-for-Database-Implementation
An implementation of a Natural Language Interface for Relational Databases 


## How to install MySQL connector & create queries
1. Make sure MySQL server is running and open terminal
2. Input the following: 
   1. activate
   2. python
   3. pip install mysql-connector
3. Within the .py file:
   1. import mysql.connector
   2. db = mysql.connector.connect(), the parameters within the () are:
      1. host="localhost",
      2. user="root",
      3. passwd="ENTER-MYSQL-PASSWORD"
4. Set a cursor with db.cursor()
5. Execute queries with cursor.execute()