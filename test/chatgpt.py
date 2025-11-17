from openai import OpenAI
import os

client = OpenAI(api_key=os.environ['OPENAI_API_KEY'])

def query_chatgpt(prompt):
  response = client.responses.create(
    model="gpt-5",
    input=prompt
  )
  
  print(response)
  print(response.output_text)
  
query_chatgpt('Hello world')