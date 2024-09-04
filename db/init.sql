create user thingydba with superuser;
alter user thingydba with password 'letmein';

create database thingydb with owner thingydba;