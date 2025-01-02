# docker network create --internal --driver bridge internal-network
# docker run -it --rm --network internal-network $(docker build -q .)

docker run -it --rm $(docker build -q .)
