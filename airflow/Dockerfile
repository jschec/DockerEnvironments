# Docker container based on latest debian image
# with miniconda docker container
FROM continuumio/miniconda3:latest

# Set working directory in docker container
WORKDIR /home/playground

# Add YML config file to docker container
ADD env_config.yml /src/env_config.yml

# Create conda environment based on added YML file:
RUN conda env create -f /src/env_config.yml
ENV PATH /opt/conda/envs/mainenv/bin:$PATH

# Activate conda environment
RUN /bin/bash -c "source activate mainenv"

# Initalize airflow database
RUN airflow initdb

# Port that this container will listen to on run time
EXPOSE 8080

# Launches airflow webserver on start of docker container
# using specified port
ENTRYPOINT ["airflow", "webserver", "--port=8080"]

# Start airflow scheduler
RUN airflow scheduler