#!/bin/bash

# NAME='cheese' UNIT='POUND' sh curl-scripts/ingredients/create.sh

curl "http://localhost:4741/ingredients" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "ingredient": {
        "name": "'"${NAME}"'",
        "unit": "'"${UNIT}"'"
      }
   }'

echo