#!/usr/bin/env bash
# sudo vim /usr/local/var/postgresql@17/postgresql.conf
# replace data_directory

brew services stop postgresql@17
chmod 700 ./combined-backup
brew services start postgresql@17