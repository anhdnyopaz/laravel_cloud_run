.PHONY: create_sql_server
create_sql_server:
gcloud sql instances create my-instance \
    --database-version=MYSQL_8_0 \
    --tier=db-f1-micro \
    --region=us-central1

.PHONY: registy_build
registy_build:
