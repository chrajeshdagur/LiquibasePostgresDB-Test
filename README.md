# Myapp Liquibase Demo
In this Demo we're executing single .sql file for the DB changes in all environment (DEV, SIT and PROD) for every release to keep the track of DB changes on evey new feature or release.


# List of liquibase commands
root@1548e440e339:/home/liquibase# 
export LIQUIBASE_HOME=/home/liquibase
export PATH=$LIQUIBASE_HOME:$PATH
echo $PATH  


root@1548e440e339:/home/myproject1/db# sh scripts/apply-changes-prod.sh
liquibase --defaultsFile=liquibase-dev.properties update-sql --sudo check before apply changes
liquibase --defaultsFile=liquibase-dev.properties update    -- apply change in database
liquibase --defaultsFile=liquibase-dev.properties changelogSync -- sync the changes between changelog and database
liquibase --defaultsFile=liquibase-dev.properties status --check the deployment status of changeset files

