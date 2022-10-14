docker image build -t mini-golang-server . -f Dockerfile
docker image ls | head -n 1
docker image ls | grep mini-golang-server
docker run -p 8080:8080 --rm -it mini-golang-server
docker container ls | head -n 1
docker container ls | grep mini-golang-server
