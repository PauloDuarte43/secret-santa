#!/bin/sh

if [ "$ENVIRONMENT" = "DSV" ]; then
    flask run --host=0.0.0.0 --debug
else
    uwsgi --http 0.0.0.0:5000 --master -p 4 -w amigosecreto.app:app
fi