import gzip
import json
from collections import Counter

# Read file
with gzip.open("schemapile/schemapile-perm.json.gz", 'r') as f:
    schemapile = json.loads(f.read())

# Look at example schema
print(schemapile['015036_schema.sql'])
print(schemapile['015036_schema.sql']["TABLES"]['visits'])

# {'INFO': {'URL': 'https://github.com/nages103/k8s-petclinic/blob/bb75e895591...
# 'LICENSE': 'APACHE-2.0',
# 'PERMISSIVE': True},
# 'TABLES': {'vets': {'COLUMNS': {'id': {'TYPE': 'UnsignedInt',
#                                       'NULLABLE': False,
#                                       'UNIQUE': True,
#                                       'DEFAULT': None,
#                                       'CHECKS': [],
#  ...

# Get the 5 most common column names
column_names = []
for schema in schemapile:
    for table in schemapile[schema]["TABLES"]:
        for column_name in schemapile[schema]["TABLES"][table]["COLUMNS"]:
            column_names.append(column_name.lower())
column_names_schemapile = Counter(column_names)

print(column_names_schemapile.most_common(5))

# [('id', 84487),
# ('name', 28426),
# ('description', 14324),
# ('created_at', 12624),
# ('user_id', 10718)]