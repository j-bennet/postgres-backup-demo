#!/usr/bin/env bash

rm -rf ./full-backup
rm -rf ./incremental-1
psql -U postgres -c "drop database mytestdb"