FROM library/postgres:14

# set the relevant envs
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=postgres
ENV POSTGRES_HOST_AUTH_METHOD=trust

# make sure that access is open
#COPY pg_hba.conf /pgdata/pg_hba.conf

# copy the initialisation script over
COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432