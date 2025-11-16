
docker login -u $DOCKER_USERNAME -p $DOCKER_PASS

docker stop react
docker rm react


docker build -t react-ci/cd .


docker run -d -it --name react -p 80:80 react-ci/cd

docker tag react-ci/cd sujithway/reactapp-cicd
docker push sujithway/reactapp-cicd
