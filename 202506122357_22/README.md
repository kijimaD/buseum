```shell
$ sqlite3
sqlite3 > .open --new example.sqlite3
sqlite3 > CREATE TABLE customers(id INTEGER PRIMARY KEY, name TEXT NOT NULL);
sqlite3 > INSERT INTO customers(id, name) VALUES (1, "hello");
sqlite3 > INSERT INTO customers(id, name) VALUES (2, "world");
sqlite3 > INSERT INTO customers(id, name) VALUES (20452, "あいうえお");
sqlite3 > INSERT INTO customers(id, name) VALUES (2954234, "砂浜");
```
