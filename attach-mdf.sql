-- SQL command for attaching AdventureWorks2022 MDF.
create database AdventureWorks2012
on (filename = N'/usr/work/AdventureWorksLT2012_Data.mdf')
for attach_rebuild_log
go;