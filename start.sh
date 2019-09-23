#!/usr/bin/env bash

if [[ ! -d migrations ]]
then
  flask db init
  flask db migrate
  flask db upgrade
fi

#flask run --host=0.0.0.0
gunicorn autoapp:app -b 0.0.0.0:5000
