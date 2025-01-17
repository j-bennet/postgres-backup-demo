#!/usr/bin/env bash

# Dump all databases. Useful switches:
# --data-only
# --schema-only
# --exclude-database=pattern
# --filter=filter
pg_dumpall -U postgres --no-comments -f dump-all-dbs.sql