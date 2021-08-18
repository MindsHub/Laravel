docker build -t mycomposer:latest .
docker run --rm -v $(pwd):/opt -w /opt mycomposer:latest

