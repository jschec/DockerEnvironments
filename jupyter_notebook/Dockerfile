# Docker container based on latest debian image
# with miniconda docker container
FROM continuumio/miniconda3:latest

# Set working directory in docker container
WORKDIR /home/playground

# Add YML config file to docker container
ADD env_config.yml /src/env_config.yml

# Copy over test jupyter file
COPY plot_ols.ipynb ./

# Create conda environment based on added YML file:
RUN conda env create -f /src/env_config.yml
ENV PATH /opt/conda/envs/mainenv/bin:$PATH

# Activate conda environment
RUN /bin/bash -c "source activate mainenv"

# Port that this container will listen to on run time
EXPOSE 8888

# Launches jupyter notebook on start of docker container
ENTRYPOINT ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]