Build the image:
docker build -t jenkins_python .

Run the container:
docker run --name jenkins -p 8080:8080 -p 5000:5000 jenkins_python:latest

Bash script for Jenkins:
pipeline.sh
