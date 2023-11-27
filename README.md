# cs157a

1. Download Docker image of database of choosing (MySQL, PostgreSQL, etc)
2. Create volume and mount it with docker container of database image you are running
3. Add/Update/Delete data
4. Docker commit the container and upload new docker image of database
5. To persist data you can... provide direct SQL code of creation of database, tables, data, Or docker copy tar file of volume you run your container with and share that with docker image that is uploaded
