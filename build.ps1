docker build . -t jetiz/rabbitmq:3.12.0
docker push jetiz/rabbitmq:3.12.0


# TEST 
#docker run -it --rm -v $PWD/init:/opt/init --entrypoint bash jetiz/rabbitmq:local
#docker run -it --rm -v $PWD/init:/opt/init jetizrabbitmq:local