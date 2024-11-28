# Wait for the SQL Server to start up.
sleep 90s

# Use sqlcmd to login to the SQL Server and run the script for attaching the
# MDF.
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "Password1!" -i attach-mdf.sql