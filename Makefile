test:
	PYTHONPATH=`pwd` DJANGO_SETTINGS_MODULE=proj.settings django-admin.py test
syncdb:
	PYTHONPATH=`pwd`:../uwsgi/ DJANGO_SETTINGS_MODULE=uwsgi.settings_deploy $(MANAGE) syncdb --noinput
	PYTHONPATH=`pwd`:../uwsgi/ DJANGO_SETTINGS_MODULE=uwsgi.settings_deploy $(MANAGE) migrate
