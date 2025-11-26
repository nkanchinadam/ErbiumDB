import psycopg2
import os
from erbium import create_database_if_not_exists

def generate_query_results(queries):
  query_results = []
  for query in queries:

    create_database_if_not_exists(query['schema']['name'])
    #run_query(query['schema']['name'], query['sql_query'], query['schema']['tables'], query['schema']['types'], query['schema']['graph'])
    conn = psycopg2.connect(
      database=query['schema']['name'],
      user="postgres",
      password=os.getenv("DB_PASSWORD"),
      host="localhost",
      port="5432"
    )
    
    conn.autocommit = True
    cursor = conn.cursor()
    cursor.execute(query['sql_query'])

    actual_result = cursor.fetchall()
    query_results.append({
      "schema": query['schema'],
      "nl_question": query['nl_question'],
      "model": query['model'],
      "expected_result": query['expected_result'],
      "actual_result": actual_result
    })
  return query_results