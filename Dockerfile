# Import SQL Server 2022 base image.
FROM microsoft/mssql-server-linux:2022-latest

# Create work directory.
RUN mkdir -p /usr/work
WORKDIR /usr/work

# Copy all scripts into working directory.
COPY . /usr/work/

# Grant permissions for the import-data script to be executable.
RUN chmod +x /usr/work/import-data.sh

# Expose port so that commands can be sent to the SQL Server.
EXPOSE 1433

# Run script for im
CMD /bin/bash ./entrypoint.sh