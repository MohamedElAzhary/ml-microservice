## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	if !(test -f .ml-microservice/bin/activate)
	then
		echo "Creating environment"
		python3 -m venv .ml-microservice
	fi
	. .ml-microservice/bin/activate

install:
	@pip install --upgrade pip &&\
		pip install -r requirements.txt
	@wget -O ./.ml-microservice/bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 \
	&& chmod +x .ml-microservice/bin/hadolint
	@wget -O ./.ml-microservice/bin/kubectl "https://dl.k8s.io/release/v1.21.1/bin/linux/amd64/kubectl" \
	&& chmod +x .ml-microservice/bin/kubectl
	@wget -O ./.ml-microservice/bin/minikube "https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64" \
	&& chmod +x .ml-microservice/bin/minikube

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	@hadolint Dockerfile
	@pylint --disable=R,C,W1203 app.py

all: install lint test
