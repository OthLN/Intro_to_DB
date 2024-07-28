# task_6.py

def generate_insert_statements():
    # Define the data
    customers = [
        {
            'customer_id': 2,
            'customer_name': 'Blessing Malik',
            'email': 'bmalik@sandtech.com',
            'address': '124 Happiness Ave.'
        },
        {
            'customer_id': 3,
            'customer_name': 'Obed Ehoneah',
            'email': 'eobed@sandtech.com',
            'address': '125 Happiness Ave.'
        },
        {
            'customer_id': 4,
            'customer_name': 'Nehemial Kamolu',
            'email': 'nkamolu@sandtech.com',
            'address': '126 Happiness Ave.'
        }
    ]

    # Generate SQL statements
    sql_statements = []
    for customer in customers:
        sql = f"INSERT INTO customer (customer_id, customer_name, email, address) VALUES ({customer['customer_id']}, '{customer['customer_name']}', '{customer['email']}', '{customer['address']}');"
        sql_statements.append(sql)

    return sql_statements

if __name__ == '__main__':
    # Print the generated SQL statements
    statements = generate_insert_statements()
    for statement in statements:
        print(statement)
