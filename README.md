# MDF Ingestion

This project illustrates how MDF files can be imported into a SQL Server instance deployed within a Docker container.

MDF file was obtained by importing a publicly available BAK file from [here](https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksLT2022.bak) and copying out the MDF file from the SQL Server install DATA folder.

# Commands

Clone this repo, then Navigate to this repo in bash and execute the commands below.

1. Build the Docker image

```sh
docker build -t mssql:dev .
```

2. Run the container

```sh
docker run \
    -e 'ACCEPT_EULA=Y' \
    -e 'MSSQL_SA_PASSWORD=Password1!' \
    -e 'MSSQL_PID=Express' \
    --name sqlserver \
    -p 1433:1433 \
    -d mssql:dev
```

3. Access the container and check that the MDF has been attached properly

```sh
# Log in to SQL Server and set target database.
docker exec -it sqlserver /opt/mssql-tools18/bin/sqlcmd \
    -S localhost \
    -U sa \
    -P Password1! \
    -d AdventureWorks2012 \
    -C

# Run SQL from the command line via sqlcmd.
select * from saleslt.product;
GO
```