import requests
import os

def query_claude(prompt):
  response = requests.post("https://api.anthropic.com/v1/messages/batches", headers={
    "x-api-key": os.environ['ANTHROPIC_API_KEY'],
    "anthropic-version": "2023-06-01",
    "content-type": "application/json"
  }, json={
    "requests": [
      {
        "custom_id": "my-first-request",
        "params": {
          "model": "claude-3-7-sonnet-20250219",
          "max_tokens": 1024,
          "messages": [
            {"role": "user", "content": prompt }
          ]
        }
      },
    ]
  })

  print(response.json())

query_claude('hello world')