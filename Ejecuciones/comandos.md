## List Docker CLI commands
docker
docker container --help

## Display Docker version and info
docker --version
docker version
docker info

## Execute Docker image
docker run hello-world

## List Docker images
docker image ls

## List Docker containers (running, all, all in quiet mode)
docker container ls
docker container ls --all
docker container ls -aq



El archivo Dockerfile provee de todas las configuraciones necesarias para la imagen a construir


Con el siguiente comando, creo un container y le asocio lo que esté dentro del Dockerfile.
Tiene que ser en minusculas
$ docker build -t primercontainer .

Para correr el container, se accede al puerto 80 del container y se accede desde host mediante el puerto 4000
$ docker run -p 4000:80 friendlyhello

Se accede a http://localhost:4000





Eliminar todos los contenedores:
$ docker rm $(docker kill $(docker ps -aq))
Eliminar todas las imágenes
$ docker rmi $(docker images -qf "dangling=true")

