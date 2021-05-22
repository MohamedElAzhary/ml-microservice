[![MohamedElAzhary](https://circleci.com/gh/MohamedElAzhary/DevOps_Microservices.svg?style=svg)](https://app.circleci.com/pipelines/github/MohamedElAzhary/DevOps_Microservices)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Clone Github repository : https://github.com/udacity/DevOps_Microservices.git
* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies
* install docker, hadolint, minikube, kubectl

## Complete the necessary files
* `Dockerfile`
    - Specify a working directory.
    - Copy the app.py source code to that directory
    - Install any dependencies in requirements.txt (do not delete the commented # hadolint ignore statement).
    - Expose a port when the container is created; port 80 is standard.
    - Specify that the app runs at container launch.
* `run_docker.sh`
    - Build the docker image from the Dockerfile; it is recommended that you use 
      an optional --tag parameter as described in the build documentation.
    - List the created docker images (for logging purposes).
    - Run the containerized Flask app; publish the container’s port to a host port. 
      The appropriate container and host ports are in the Dockerfile and make_prediction.sh files, respectively.
* `upload_docker.sh`
    - Define a dockerpath which will be “/path”; the path may be the same as the build tag you created in 
      run_docker.sh or just some descriptive path name. Recall that your docker username is your unique docker ID.
    - Authenticate and tag image; this step is responsible for creating a login step and ensuring that the uploaded
      docker image is tagged descriptively.
    - Similar to how you might push a change to a Github repository, push your docker image to the dockerpath 
      defined in step 1. This push may take a moment to complete.

## Linting the Dockerfile
* Run `make lint` to lint the Dockerfile


### Running `app.py` locally for testing
1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
