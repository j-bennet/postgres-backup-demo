#!/usr/bin/env bash

pg_combinebackup ./full-backup/ ./incremental-1/ -o ./combined-backup/
