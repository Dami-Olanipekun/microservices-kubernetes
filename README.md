Machine Learning API
Operationalizing a Machine Learning (House predictions algorithm) microservice API with Docker and Kubernetes.
Linting Test Done with Circleci
drawing

CircleCI

Overview
The pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on the data source site.

It was deployed on an Ubuntu 18.04 EC2 instance on Amazon Web Services

Tasks
Clone this repository
CD into the cloned repositiry
Install Python3 Virtualenv
Create a virtual environment python3 -m venv ~/environmentname
Activate the environment source ~/environmentname/bin/activate
Install the dependencies via project Makefile with make install. project dependencies are listed in the file requirements.txt
Install Docker, Kubernetes(minikube) and Hadolint
Run and build a docker image with ./run_docker.sh (This will build and list docker the run the containerized Flask app.
Then call ./make_prediction.sh. This shell script is responsible for sending some input data to your containerized application via the appropriate port.
Edit run_docker.sh with your unique username and tagged image id then run run_docker.sh to upload your image to Docker Hub.
Start Mikikube with minikube start --vm-driver=none
Edit run_kubernetes.sh with your docker image.
Run run_kubernetes.sh this will create a pod.
Make predictions again using ./make_prediction.sh.
