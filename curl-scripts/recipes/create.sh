#!/bin/bash

# NAME='Recipe 1' DESC='A nice recipe' sh curl-scripts/recipes/create.sh

curl "http://localhost:4741/recipes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "recipe": {
        "name": "'"${NAME}"'",
        "description": "'"${DESC}"'"
      }
   }'

echo