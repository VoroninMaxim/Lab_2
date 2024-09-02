## Build the image:
<p>docker build -t jenkins_python .</p>
<hr>

## Run the container:
<p>docker run --name jenkins -p 8080:8080 -p 5000:5000 jenkins_python:latest</p>
<hr>

## Bash script for Jenkins:
<p>pipeline.sh</p>
<hr>
