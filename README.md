This is the circleCI badge: [![CircleCI](https://dl.circleci.com/status-badge/img/gh/ufonumo/microservice/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/ufonumo/microservice/tree/main)


## Project Overview

In this project, I  applied the skills I acquired in this course to operationalize a Machine Learning Microservice API. 

I was given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. I read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests my ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project can be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.


## Instructions on how to Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl


## short explanation of the files in the repository

1. run_docker.sh: runs the app in Docker
2. run_kubernetes.sh: runs the app in Kubernetes
3. app.py: the Flask app
4. requirements.txt: the requirements for the app
5. Dockerfile: the Dockerfile for the app
6. make_predict.sh: it contains the code to make predictions
7. config.yaml: the configuration file for the app
8. upload_docker.sh: it contains the code to upload the Docker image to Docker Hub