#!/usr/bin/env bash

# Dump selected database. Useful switches:
# --data-only
# --schema-only
# --schema=pattern
# --table=pattern
# --filter=filter_file.txt
# --format (custom, directory, tar, plain) [custom, directory, tar] -> pg_restore
pg_dump -U postgres mytestdb --no-comments -f dump-mytestdb.sql

pg_dump -U postgres mytestdb --no-comments -f dump-mytestdb.custom --format=custom