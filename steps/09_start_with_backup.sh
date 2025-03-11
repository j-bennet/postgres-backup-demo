#!/usr/bin/env bash
# sudo vim
#    /usr/local/var/postgresql@17/postgresql.conf
#    /opt/homebrew/var/postgresql@17/postgresql.conf
# depending on brew --prefix
# replace data_directory with /Users/jbennet/src/postgres-backup-demo/combined-backup

brew services stop postgresql@17
chmod 700 ./combined-backup
# chown -R postgres:postgres ./combined-backup
brew services start postgresql@17