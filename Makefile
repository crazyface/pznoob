MANAGE=django-admin.py

test:
	PYTHONPATH=`pwd` DJANGO_SETTINGS_MODULE=proj.settings $(MANAGE) test

run:
	PYTHONPATH=`pwd` DJANGO_SETTINGS_MODULE=proj.settings $(MANAGE) runserver

syncdb:
	PYTHONPATH=`pwd` DJANGO_SETTINGS_MODULE=proj.settings $(MANAGE) syncdb --noinput
	PYTHONPATH=`pwd` DJANGO_SETTINGS_MODULE=proj.settings $(MANAGE) migrate