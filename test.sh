#!/bin/bash

APP_URL="http://localhost:5050/"

SUCCESS_STRING="<h1>You are calling me from"

RESPONSE=$(curl -s $APP_URL)

if [[ "$RESPONSE" == *"$SUCCESS_STRING"* ]]; then
  echo "Success!"
  exit 0  # Thành công
else
  echo "Failed!"
  exit 1  # Thất bại
fi
