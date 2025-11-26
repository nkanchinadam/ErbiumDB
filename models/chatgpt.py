from openai import OpenAI
import os
from dotenv import load_dotenv
import requests

load_dotenv()

client = OpenAI(api_key=os.environ['OPENAI_API_KEY'])

def query_chatgpt(prompt):
  response = client.responses.create(
    model="gpt-5",
    input=prompt
  )
  
  print(response)
  print(response.output_text)
  return response.output_text