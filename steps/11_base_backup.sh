#!/usr/bin/env bash

pg_basebackup -D ./base-backup -Fp -l banana -U postgres