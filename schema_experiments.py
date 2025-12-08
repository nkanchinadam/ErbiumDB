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
    "What are all the apparel items that are intended to be worn by men?",
    "What are all the accessories that can be bundled with an iPhone 14 Pro Max?",
    "What are all non-kitchen appliances?",
    "What are all pairs of products that have at least 3 tags in common?",
    "What is the average number of browsing sessions per user?",
    "What are the top 5 products with the highest average review?",
    "Are customers usually more satisfied with the physical or digital products we offer?",
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