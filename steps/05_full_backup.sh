#!/usr/bin/env bash

mkdir -p ./full-backup
pg_basebackup -D ./full-backup
