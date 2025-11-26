import json
from generate_sql_queries import generate_sql_queries
from generate_query_results import generate_query_results

def main():
  # Prepare input data
  # 1. List of LLMs
  # 2. List of NL Questions
  # 3. ER Diagram & schemas
  # 4. Generate data in database

  schemas_file = open('./example.json', 'r')
  schemas_data = json.load(schemas_file)
  schemas = []
  for key in schemas_data:
    if key.startswith('connected_subgraphs'):
      schemas.append({
        'name': key,
        'tables': schemas_data[key]
      })

  nl_questions = [
    "What is the average number of students per section?",

  ]

  llms = [
    'openai/gpt-4.1'
  ]

  sql_queries = generate_sql_queries(schemas, nl_questions, llms)
  query_results = generate_query_results(sql_queries)

  with open('./query_results.json', 'w') as f:
    json.dump(query_results, f)
      
      
if __name__ == "__main__":
  main()