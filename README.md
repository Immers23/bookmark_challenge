# bookmark_challenge

## how to install database
Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the pqsl command \c bookmark_manager;
Run the query we have saved in the file 01_create_bookmarks_table.sql

## Setting up a Testing Environment

Create a DB from command line: createdb bookmark_manager_test


To set up a test database, let's run psql and create a database, and use the SQL query saved in db/migrations/01_create_bookmarks_table.sql to create a bookmarks table.

$> psql
create test db from psql command: admin=# CREATE DATABASE “bookmark_manager_test";

command line input to connect: \c bookmark_manager_test
You are now connected to database "bookmark_manager_test" as user "Ali".
bookmark_manager_test=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

admin=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
