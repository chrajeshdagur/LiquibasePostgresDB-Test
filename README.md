# Myapp Liquibase Demo
In this Demo we're executing single .sql file for the DB changes in all environment (DEV, SIT and PROD) for every release to keep the track of DB changes on evey new feature or release.


# List of liquibase commands
Please remember the following text:

```
export LIQUIBASE_HOME=/home/liquibase
export PATH=$LIQUIBASE_HOME:$PATH
echo $PATH
```

When running the script `apply-changes-prod.sh`, the following Liquibase commands will be executed:

- `liquibase --defaultsFile=liquibase-dev.properties update-sql`: Check before applying changes to the database
- `liquibase --defaultsFile=liquibase-dev.properties update`: Apply changes in the database
- `liquibase --defaultsFile=liquibase-dev.properties changelogSync`: Synchronize the changes between the changelog and the database
- `liquibase --defaultsFile=liquibase-dev.properties status`: Check the deployment status of changeset files
