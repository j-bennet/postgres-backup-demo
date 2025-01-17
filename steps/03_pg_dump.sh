#!/usr/bin/env bash

# Dump selected database. Useful switches:
# --data-only
# --schema-only
# --schema=pattern
# --table=pattern
# --filter=filter
pg_dump -U postgres mytestdb --no-comments -f dump-mytestdb.sql