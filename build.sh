pip cache purge

pip install --upgrade setuptools
# install all deps in the venv
pip install -r requirements.txt


python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput 


