# MySQL Connector
import mysql.connector
db = mysql.connector.connect(
    host="",
    user="",
    port='',
    passwd="",
    database="MusicShop"
)

cursor = db.cursor()

# QUERY: how many songs in the shop?
query1 = "SELECT COUNT(*) AS total_songs FROM Songs;"
cursor.execute(query1)
result = cursor.fetchall()
for x in result:    
    print(x[0])

# QUERY: get the names of all the customers
query2="SELECT name FROM Customers"
cursor.execute(query2)
result = cursor.fetchall()
for name in result:
    print(name[0])