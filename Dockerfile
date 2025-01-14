# Import SQL Server 2022 base image.
FROM mcr.microsoft.com/mssql/server:2022-latest

# Create work directory.
USER root
RUN mkdir -p /usr/work
WORKDIR /usr/work

# Copy all scripts into working directory.
COPY . /usr/work/

# Grant permissions for scripts to be executable.
RUN chmod +x /usr/work/attach-mdf.sh
RUN chmod +x /usr/work/entrypoint.sh

# Expose port so that commands can be sent to the SQL Server.
EXPOSE 1433

# Run script for im
CMD /bin/bash ./entrypoint.sh