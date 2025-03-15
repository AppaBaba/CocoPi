appa@rp5:~/SQLite $ sqlite3 mydb.sqlite3
SQLite version 3.40.1 2022-12-28 14:03:47
Enter ".help" for usage hints.
sqlite> CREATE TABLE student(id integer, name text);

------------or one line--------------

sqlite3 mydb.sqlite3 'CREATE TABLE person(id integer, name text)'

sqlite> .table
student
sqlite> .quit

------------open agin----------------

appa@rp5:~/SQLite $ sqlite3 mydb.sqlite3
SQLite version 3.40.1 2022-12-28 14:03:47
Enter ".help" for usage hints.

sqlite> insert into student values(1,'Dan');
sqlite> insert into student values(2,'Bob');
sqlite> se;ect * from student;
Parse error: near "se": syntax error
  se;ect * from student;
  ^--- error here
sqlite> select * from student;
1|Dan
2|Bob

sqlite> insert into student values(3,'Sue');
sqlite> insert into student values(4,'Fred');
sqlite> select * from student;
1|Dan
2|Bob
3|Sue
4|Fred
sqlite> 
