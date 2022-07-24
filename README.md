[![CircleCI](https://dl.circleci.com/status-badge/img/gh/mjombanorman/ml-microservice-kubenertes/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/mjombanorman/ml-microservice-kubenertes/tree/main)

# Project Summary

The project aims to operationalize a Machine Learning Microservice API. 
It contains a pre-trained, `sklearn` model that is trained to predict prices of houses in Boston based on average rooms in a home,data about highway access, teacher-to-pupil ratios, and so on. More information on [the data source site](https://www.kaggle.com/c/boston-housing).The main aim is to tests the operationalization a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. The project can be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Running the App
####The poject contains various files.
1. run_docker.sh - contains scripts that will run snd build docker image
2. upload_docker.sh -contains scripts that will upload docker image to the registry
3. make_prediction.sh - contains scripts that will allow predictions
4. run_kubernetes.sh - contains scripts that will run the app in the kubernetes pod in minikube
5. hadolint.sh - contains scripts that will allow installing of hadolint
6. Makefile -contains steps that will initializing project setup

## Steps to run the app 
1. Activate the virtualenv before anything is installed
* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> ~/.mlapp
source ~/.mlapp/bin/activate
```
2. Run `make install` to install the necessary dependencies

3. Inorder to run `app.py` you  need to do the following in different environments
   i. Standalone:  `python app.py`
   ii. Run in Docker:  `./run_docker.sh`
   ii. Run in Kubernetes:  `./run_kubernetes.sh`

### Running in Kubernetes Steps

* Setup and Configure Docker locally link: [Docker Install](https://docs.docker.com/engine/install/ubuntu/)
* Setup and Configure Kubernetes via minikube locally link: [Kubernetes Install](https://minikube.sigs.k8s.io/docs/start/)
* Create Flask app in Container
* Run via kubectl