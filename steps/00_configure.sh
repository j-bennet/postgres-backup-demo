#!/usr/bin/env bash

psql -U postgres -c "alter system set summarize_wal='on'"

brew services stop postgresql@17
brew services start postgresql@17
