#!/bin/bash

urls=(
  "http://httpbin.org/status/200"
  "http://httpbin.org/status/301"
  "http://httpbin.org/status/404"
  "http://httpbin.org/status/500"
  "http://httpbin.org/status/102"
)

for url in "${urls[@]}"; do
  response=$(curl -s -w "\n%{http_code}" "$url")
  http_code=$(echo "$response" | tail -n 1)
  body=$(echo "$response" | sed '$d')

  if [[ $http_code =~ ^[1-3] ]]; then
    echo "URL: $url"
    echo "Status: $http_code"
    echo "Body: $body"
    echo "-------------------------"
  elif [[ $http_code =~ ^[45] ]]; then
    echo "EXCEPTION: Received $http_code from $url"
  else
    echo "Unexpected status code: $http_code"
  fi
done

echo "All responses processed."
exit 0
