#!/bin/bash

APP_ID=''
APP_SECRET=''
URI=''

echo "content-type: application/json"
echo ""

CODE=$QUERY_STRING




# get token from OAuth provider using the code got the index.html page
curl POST -d  "code=${CODE}&redirect_uri=${URI}&client_id=${APP_ID}&client_secret=${APP_SECRET}&grant_type=authorization_code" https://oauth2.googleapis.com/token

# Notes
# Add code.sh in cgi-bin
# get app id , app secret Key