import mysql.connector
import os

# Connect to the database
connection = mysql.connector.connect(
    host="localhost",
    user="user",
    password="password",
    database="ecommerce"
)

def populate_table(number):
    for file_name in os.listdir("inserts"):
        with open(f"inserts/{file_name}", "r") as file:
            # Read the SQL commands
            commands = file.read()
            if file_name.startswith(number):
                for sql_insert in commands.split(";"):
                    cursor.execute(sql_insert)

# Create a cursor object to execute SQL queries
cursor = connection.cursor()

populate_table("01")
populate_table("02")
populate_table("03")



connection.commit()

# Close the cursor and connection
cursor.close()
connection.close()