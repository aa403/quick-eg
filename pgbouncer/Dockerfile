FROM qixtand/debian-buster-pgbouncer-rr:1.9.0
# FROM bitnami/pgbouncer:1.16.1-debian-10-r87

EXPOSE 6432

COPY pgbouncer.ini /etc/pgbouncer/pgbouncer.ini
COPY pgbouncer-databases.ini /etc/pgbouncer/pgbouncer-databases.ini

# File userlist.txt is now written via entrypoint. Make sure it doesn't exist
RUN rm -rf /etc/pgbouncer/userlist.txt

# force use of the new userlist
COPY userlist.txt /etc/pgbouncer/userlist.txt

# COPY rewrite_query.py /etc/pgbouncer/rewrite_query.py
COPY routing_rules.py /etc/pgbouncer/routing_rules.py

# Overwrites the file pulled from qixtand/debian-buster-pgbouncer-rr:1.9.0
ADD entrypoint.sh /entrypoint.sh

# RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
