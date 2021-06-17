# MSSQL to PGSQL Migration - Local

## Database Migration Workflow

![Screenshot](https://github.com/IraAngeles-IBM/pearlchain-poc/blob/master/docs/images/database_migration_local.png)

Run following commands to transfer file data from MSSQL to PostgreSQL.
```console
pgloader mssql://sa:<yourMSSQlpassword>@<msql path> pgsql://postgres:<yourPGSQLPassword>@<pgsql path>
```
* **PGLOADER**: https://pgloader.io/
* **For more details on PostgreSQL database, please visit:** [ IBM Developer Tutorial](https://gist.github.com/timroster/b0fbc0b7054e573226600ba5bf5bdbb4)

