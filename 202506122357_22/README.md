```shell
$ sqlite3
sqlite3 > .open --new customer.sqlite3
sqlite3 > CREATE TABLE customers(id INTEGER PRIMARY KEY, name TEXT NOT NULL);
sqlite3 > INSERT INTO customers(id, name) VALUES (1, "hello")
```
