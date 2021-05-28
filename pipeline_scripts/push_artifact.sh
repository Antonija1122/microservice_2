docker build -t antonijaa/service2:latest -t antonijaa/service2:$TAG -f ./service2/Dockerfile ./service2

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push antonijaa/service2:latest

docker push antonijaa/service2:$TAG


