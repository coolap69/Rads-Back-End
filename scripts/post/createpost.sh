#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/posts"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "post": {
      "user_id": "'"${USER_ID}"'",
      "description": "'"${DESCRIPTION}"'",
      "title": "'"${TITLE}"'",
      "date_time": "'"${DATE_TIME}"'",
      "service_id": "'"${SERVICE_ID}"'"
    }
  }'

echo
