# MySQL Connector
import mysql.connector
db = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="ENTER-MYSQL-PASSWORD"
)

cursor = db.cursor()
cursor.execute("CREATE DATABASE testdatabase")