## Docker commands to run both sonarqube and trivy as images
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community

docker run --rm -v trivy-cache:/root/.cache/ -v /var/run/docker.sock:/var/run/docker.sock aquasec/trivy:latest
 