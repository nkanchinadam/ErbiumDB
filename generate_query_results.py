import psycopg2
import os
from erbium import init_database

def generate_query_results(queries):
  query_results = []
  for query in queries:
    if query['sql_query'] == None:
      query_results.append({
        "schema": query['schema'],
        "nl_question": query['nl_question'],
        "model": query['model'],
        "sql_query": query['sql_query'],
        "valid_query": False,
        "actual_result": None
      })
      continue

    init_database(query['schema']['name'], './example.json')
    conn = psycopg2.connect(
      database=query['schema']['name'],
      user="postgres",
      password=os.getenv("DB_PASSWORD"),
      host="localhost",
      port="5432"
    )

    conn.autocommit = True
    cursor = conn.cursor()

    valid_query = True
    actual_result = None
    try:
      cursor.execute(query['sql_query'])
      actual_result = cursor.fetchall()
    except:
      valid_query = False

    query_results.append({
      "schema": query['schema'],
      "nl_question": query['nl_question'],
      "model": query['model'],
      "sql_query": query['sql_query'],
      "valid_query": valid_query,
      "actual_result": actual_result
    })
  return query_results