#!/bin/bash

# one time, build db
# su postgres -c "/usr/lib/postgresql/9.5/bin/initdb -D /usr/loft-backend-sixteen"

# if it stop, run this command again
# su postgres -c '/usr/lib/postgresql/9.5/bin/pg_ctl -D /var/lib/postgresql/data/ start -l /var/lib/postgresql/logfile'

# bootstrap the database with a snapshot
su postgres -c "psql postgres < /var/initdb_scripts/init.sql";

