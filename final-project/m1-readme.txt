
Issue: Connection fails on Windows  - client encoding error, 

- Fix: add “set PGCLIENTENCODING=UTF8” before the first set instruction to the C:\Program Files\PostgreSQL\9.6\scripts\runpsql.bat file