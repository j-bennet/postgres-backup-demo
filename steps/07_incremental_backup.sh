#!/usr/bin/env bash

mkdir -p ./incremental-1
pg_basebackup --incremental=./full-backup/backup_manifest -D ./incremental-1/
