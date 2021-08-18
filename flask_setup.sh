#!/bin/bash
# entrypoint script for fence to sync user.yaml before running

sleep 2
echo "create flask-sevice ..."

cd /var/www/flask-api-tutorial-master/

sleep 2
flask db init 

sleep 4
flask run -h 0.0.0.0 -p 6000
