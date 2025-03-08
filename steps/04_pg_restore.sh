#!/usr/bin/env bash

pg_restore -U postgres --no-comments --clean --dbname=mytestdb dump-mytestdb.custom
