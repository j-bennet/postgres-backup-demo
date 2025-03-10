#!/usr/bin/env bash

# prerequisite:
# ALTER SYSTEM SET summarize_wal = on;
# then take a base backup

mkdir -p ./incremental-1
pg_basebackup --incremental=./full-backup/backup_manifest -D ./incremental-1/
