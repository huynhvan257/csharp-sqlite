# Introduction #

Encrypting your database is a 2 step process
  1. Compile with SQLITE\_HAS\_CODEC
  1. Activate encryption with the PRAGMA HEXKEY command
```
PRAGMA hexkey="0x0102030405060708090a0b0c0d0e0f10";
```
**Note:** Your password is the 32 byte hexkey prefixed with 0x

### Sample Crypto commands ###
```
sql:C#-SQLite3 encrypt.sqlite
SQLite version 3.7.10-C#
(source 2012-01-16 13:28:40)
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> PRAGMA hexkey="0x0102030405060708090a0b0c0d0e0f10";
sqlite> create table t1 (c1);
sqlite> select * from sqlite_master;
table|t1|t1|2|CREATE TABLE t1 (c1)
sqlite> .quit
```

Here is a sample showing how to change the encryption key:
```
sql:C#-SQLite3 C#-SQLite3.exe encrypt.sqlite
SQLite version 3.7.10-C#
(source 2012-01-16 13:28:40)
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> PRAGMA hexkey="0x0102030405060708090a0b0c0d0e0f10";
sqlite> select * from sqlite_master;
table|t1|t1|2|CREATE TABLE t1 (c1)
sqlite> PRAGMA hexrekey="0x0102030405060708090a0b0c0d0e0f11";
sqlite> select * from sqlite_master;
table|t1|t1|2|CREATE TABLE t1 (c1)
sqlite> .quit
```

Here is a sample showing failed access:
```
sql:C#-SQLite3 C#-SQLite3.exe encrypt.sqlite
SQLite version 3.7.10-C#
(source 2012-01-16 13:28:40)
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> PRAGMA hexkey="0x0102030405060708090a0b0c0d0e0f10";
sqlite> select * from sqlite_master;
Error: file is encrypted or is not a database
sqlite> .quit
```
Here is a sample showing successful access:
```
sql:C#-SQLite3 C#-SQLite3.exe encrypt.sqlite
SQLite version 3.7.10-C#
(source 2012-01-16 13:28:40)
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> PRAGMA hexkey="0x0102030405060708090a0b0c0d0e0f11";
sqlite> select * from sqlite_master;
table|t1|t1|2|CREATE TABLE t1 (c1)
sqlite> .quit
```