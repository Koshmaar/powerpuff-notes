
# todo change to Nakefile

setup:
	curl -sSL https://install.python-poetry.org | python3 -
	poetry shell

run:
	cd backend/ && python3 manage.py runserver localhost:8007

