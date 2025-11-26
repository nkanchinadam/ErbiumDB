def query_github_models(prompt, model):
  response = requests.post(os.environ["GITHUB_MODELS_ENDPOINT"] + '/inference/chat/completions', headers={
    "Authorization": 'Bearer ' + os.environ['GITHUB_TOKEN'],
    "content-type": "application/json"
  }, json={
    "model": model,
    "messages": [
      {
        "role": "user",
        "content": prompt 
      },
    ]
  })

  sql_query = response.json()['choices'][0]['message']['content']
  print(sql_query)
  return sql_query