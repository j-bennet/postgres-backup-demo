#!/usr/bin/env bash

# Dump all databases. Useful switches:
# --data-only
# --schema-only
# --exclude-database=pattern
# --filter=filter_file.txt
# --format (custom, directory, tar, plain) [custom, directory, tar] -> pg_restore
pg_dumpall -U postgres --no-comments -f dump-all-dbs.sql
