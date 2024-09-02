## Build the image:
<hr>
docker build -t jenkins_python .
<hr>
## Run the container:
<hr>
docker run --name jenkins -p 8080:8080 -p 5000:5000 jenkins_python:latest
<hr>
## Bash script for Jenkins:
<hr>
pipeline.sh
