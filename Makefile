test:
	PYTHONPATH=`pwd` DJANGO_SETTINGS_MODULE=proj.settings django-admin.py test
syncdb:
	PYTHONPATH=`pwd` DJANGO_SETTINGS_MODULE=proj.settings django-admin.py syncdb --noinput 
	PYTHONPATH=`pwd` DJANGO_SETTINGS_MODULE=proj.settings django-admin.py migrate
