from models.chatgpt import query_chatgpt
from models.claude import query_claude

queryModelByName = {
  'chatgpt': query_chatgpt,
  'claude': query_claude
}

prompt_prefix = "You are the world's best natural language to SQL translator. You will be given two things: a schema for a PostgreSQL database and a natural language question. Given these two inputs, you should respond ONLY with a SQL statement that when run against the proivided schema, returns the results that would answer the provided qeustion. Again, you should ONLY answer with the SQL statement. Do not include any extra text before or after the SQL statement."

def generate_sql_queries(schemas, nl_questions, models):
  sql_queries = []
  for schema in schemas:
    for nl_question in nl_questions:
      for model in models:
          sql_queries.append({
            'schema': schema,
            'nl_question': nl_question,
            'model': model,
            'sql_query': queryModelByName[model](f"{prompt_prefix} The database schema is {schema} and the question is {nl_question}")
          })
  return sql_queries