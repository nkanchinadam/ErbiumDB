import psycopg2
import os

def generate_query_results(queries):
  query_results = []
  for query in queries:
    conn = psycopg2.connect(
      database=query['schema_name'],
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
      "schema_name": query['schema']['name'],
      "nl_question": query['nl_question'],
      "model": query['model'],
      "expected_result": query['expected_result'],
      "actual_result": actual_result
    })
  return query_results