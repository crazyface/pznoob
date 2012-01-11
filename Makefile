MANAGE=django-admin.py

test:
	PYTHONPATH=`pwd` DJANGO_SETTINGS_MODULE=proj.settings $(MANAGE) test contact main

run:
	PYTHONPATH=`pwd` DJANGO_SETTINGS_MODULE=proj.settings $(MANAGE) runserver

syncdb:
	PYTHONPATH=`pwd`:../uwsgi/ DJANGO_SETTINGS_MODULE=uwsgi.settings_deploy $(MANAGE) syncdb --noinput
	PYTHONPATH=`pwd`:../uwsgi/ DJANGO_SETTINGS_MODULE=uwsgi.settings_deploy $(MANAGE) migrate