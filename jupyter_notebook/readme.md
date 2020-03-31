# Setting up Jupyter Notebook in docker using conda
This readme describes how to use the given Dockerfile and the provided YML file to create a custom environment for launching Jupyter Notebook.

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

Navigate to Jupyter Notebook directory and build docker image

```
$ cd DockerEnvironments
$ cd jupyter_notebook
$ docker build -t image-name .
```

Run docker image using port 8888

```
$ docker run -p 8888:8888 image-name
```

navigate to localhost:8888 in web browser 

```
type localhost:8080 as url and hit enter using favorite web browser 
```

Search for token and use it for initalizing session
```
Copy over token and use it in jupyter web page
```

## Built with
* [Docker](https://docs.docker.com/) - Container management system
* [Miniconda](https://docs.conda.io/en/latest/miniconda.html) - Package and environment manager for multiple langauges
* [Jupyter](https://jupyter-notebook.readthedocs.io/en/latest/) - Interactive notebook for Python

## Authors
* **Joshua Scheck** - *Initial work* - [jschec](https://github.com/jschec)

## License
This project is licensed under the MIT License - see the [LICENSE.md](../LICENSE) file for details

## Acknowledgments
Built docker image off of miniconda image: https://hub.docker.com/r/continuumio/miniconda