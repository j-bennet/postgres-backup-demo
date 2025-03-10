Update the config:

```ini
# sudo vim /usr/local/var/postgresql@17/postgresql.conf
wal_level = replica

archive_mode = on

archive_command = 'test ! -f /Users/jbennet/src/postgres-backup-demo/archive-dir/%f && cp %p /Users/jbennet/src/postgres-backup-demo/archive-dir/%f'
```

Restart the server:

```sh
brew services stop postgresql@17
brew services start postgresql@17
```
