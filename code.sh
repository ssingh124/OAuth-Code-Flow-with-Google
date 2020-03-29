#!/bin/bash

APP_ID='885522048871-fhhejrcho5gk2hfm5gbhq8tmdvusl7nn.apps.googleusercontent.com'
APP_SECRET='JFe3sty9y7nbtA_0LGvp68JQ'
URI='https://ssingh.wmdd4950.com/oauth/'

echo "content-type: application/json"
echo ""

CODE=$QUERY_STRING




# get token from OAuth provider using the code got the index.html page
curl POST -d  "code=${CODE}&redirect_uri=${URI}&client_id=${APP_ID}&client_secret=${APP_SECRET}&grant_type=authorization_code" https://oauth2.googleapis.com/token

# Notes
# Add code.sh in cgi-bin
# get app id , app secret Key