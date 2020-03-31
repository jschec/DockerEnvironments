# Docker container based on debian image
# with R language and rstudio
FROM rocker/rstudio:latest

# WIP
COPY /rstudio/test_mssql_connection.R /home/test_mssql_connection.R

# Updates package lsit for upgrades that need upgrading
RUN apt-get update

# Install required packages for mssql odbc driver
RUN apt-get -qq -y --no-install-recommends install \
apt-transport-https \
curl \
gnupg \
unixodbc \
unixodbc-dev

# Download mssql odbc driver for debian 10 from microsoft
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list

# Updates package lsit for upgrades that need upgrading
RUN apt-get update

# Install mssql driver and tools
RUN ACCEPT_EULA=Y apt-get install --yes --no-install-recommends msodbcsql17 mssql-tools

# Install R packages needed for mssql odbc connection
RUN R -e "install.packages('DBI',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('odbc',dependencies=TRUE, repos='http://cran.rstudio.com/')"

#RUN apt-get clean \
# && rm -rf /var/lib/apt/lists/* \
# && rm -rf /tmp/*
