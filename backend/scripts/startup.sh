#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT tst_vetstabdkj_dev_136663.wsgi:application
