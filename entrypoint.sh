# Ingest the MDF when the container starts.
/usr/work/attach-mdf.sh &

# Start up the SQL Server.
/opt/mssql/bin/sqlservr