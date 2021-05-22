## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	@python3 -m venv .ml-microservice

install:
	@pip install --upgrade pip &&\
		pip install -r requirements.txt
	@wget -O ./.ml-microservice/bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.4.1/hadolint-Linux-x86_64
	@sudo chmod +x .ml-microservice/bin/hadolint

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	@hadolint Dockerfile
	@pylint --disable=R,C,W1203 app.py

all: install lint test
