import psycopg2
from settings import load_configs

db_config = load_configs()

try:
    connection = psycopg2.connect(host=db_config['db_url'], port=db_config['port'], database=db_config['db_name'],
                                  user=db_config['username'], password=db_config['password'])
    print('Connect to database successfully')
    cursor = connection.cursor()
    select_query = """
        select * from table1
    """
    cursor.execute(select_query)
    records = cursor.fetchall()
    for row in records:
        print(f"{row[0]}, {row[1]}")

    cursor.close()
    connection.close()

except (Exception, psycopg2.Error) as error:
    print("Error while fetching data from PostgreSQL", error)