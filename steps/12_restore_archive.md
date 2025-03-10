Create a directory to restore from:

```sh
mkdir -p restore-dir
chmod 700 restore-dir
cp -r base-backup/* restore-dir
```

Create a signal file:

```sh
touch restore-dir/recovery.signal
```

Add recovery setting to config:

(before v17, it was `recovery.conf`)

```ini
# sudo vim /usr/local/var/postgresql@17/postgresql.conf
restore_command = 'cp /Users/jbennet/src/postgres-backup-demo/archive-dir/%f %p'
```

Update data directory:

```ini
# sudo vim /usr/local/var/postgresql@17/postgresql.conf

data_directory = /Users/jbennet/src/postgres-backup-demo/restore-dir
```

Start the server:

```sh
brew services start postgresql@17
```