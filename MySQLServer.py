import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Establish a connection to the MySQL server
        connection = mysql.connector.connect(
            host='localhost',          # Replace with your MySQL server host
            user='root',               # Replace with your MySQL username
            password='password'        # Replace with your MySQL password
        )
        
        if connection.is_connected():
            print("Connected to MySQL server")

            # Create a cursor object
            cursor = connection.cursor()
            
            # SQL command to create the database if it doesn't exist
            create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_store"
            cursor.execute(create_db_query)
            
            print("Database 'alx_book_store' created successfully!")
    
    except mysql.connector.Error as err:
        print(f"MySQL Error: {err}")
    
    except Exception as e:
        print(f"Error: {e}")
    
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

# Run the function to create the database
if __name__ == "__main__":
    create_database()
