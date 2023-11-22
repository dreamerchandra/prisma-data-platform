# Prisma Data Studio

#### Backend
[Prisma Console](https://console.prisma.io/) is migrating from old [Old console](https://cloud.prisma.io/) to [new](https://console.prisma.io/) console and data browser isn't yet available in there.

So use this repo as duck tape solution until available.

# How to use

Replace `prisma/schema.prisma` with your own prisma

## In local

 >> Create a `.env` file

```
DATABASE_URL=<your connection string goes here>
``` 

Run `yarn start`

Once docker is up visit `3000` 

## For cloud

For using cloud run

First time setup
```
gcloud run deploy <service-name> --source . --add-cloudsql-instances=<cloud-sql-db> --allow-unauthenticated --cpu-boost --update-secrets=<DB_CONNECTION_STRING_SECRET>
```

Once done go to cloud run and redeploy with env variable as `DATABASE_URL` in secret section

#### For subsequent deployment run 
```
SERVICE=<service-name> TAG=<v1-1-1> yarn deploy
```