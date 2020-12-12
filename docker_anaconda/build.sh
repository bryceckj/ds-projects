docker build --no-cache . -t docker_conda:2
docker tag docker_conda:2 bryceckj/docker_conda:py38
docker push bryceckj/docker_conda:py38