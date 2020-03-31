# Setting up customizable miniconda environment in docker
This readme describes how to use the given Dockerfile and the provided YML file to create a custom environment which can be modified to web pages or used to containerize applications.

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
* [Git](https://git-scm.com/downloads) - Git CLI
* [Docker](https://docs.docker.com/install/) - Docker

### Installing
Clone repository using Git command in command prompt in the target directory

```
$ git clone https://github.com/jschec/DockerEnvironments.git
```

Navigate to Bioinformatics Base directory and build docker image

```
$ cd DockerEnvironments
$ cd bioinformatics_base
$ docker build -t image-name .
```

Run docker image

```
$ docker run image-name
```


## Built with
* [Docker](https://docs.docker.com/) - Container management system
* [Miniconda](https://docs.conda.io/en/latest/miniconda.html) - Package and environment manager for multiple langauges

## Authors
* **Joshua Scheck** - *Initial work* - [jschec](https://github.com/jschec)

## License
This project is licensed under the MIT License - see the [LICENSE.md](../LICENSE) file for details

## Acknowledgments
Built docker image off of miniconda image: https://hub.docker.com/r/continuumio/miniconda