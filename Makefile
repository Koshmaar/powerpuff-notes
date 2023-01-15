
# todo change to Nakefile

setup:
	curl -sSL https://install.python-poetry.org | python3 -
	poetry shell

run:
	cd backend/ && python3 manage.py runserver localhost:8007

cloud-deploy:
	# todo poetry export --without-hashes --format=requirements.txt > requirements.txt  ?
	# todo remove environment markers ?
	cd backend/ && gcloud app deploy -q

cloud-logs:
	gcloud app logs tail -s default

cloud-browse:
	gcloud app browse
