docker build . -t docker_conda
docker tag docker_conda bryceckj/docker_conda:py38
docker push bryceckj/docker_conda:py38