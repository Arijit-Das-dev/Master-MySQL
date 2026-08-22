# Transaction Management

## AutoCommit
- By default MySQL works in autocommit mode, means it saves all your changes permanantly in the database by deafult.
- Sometimes it becomes a disaster when some critical error happens and that error saved permanantly in the database.
- That's why we have to manage transactions while quering in a database.

## Workflow
- At first we use this query - ***SET autocommit = 0;***
    - By doing this, our queries does not save in the database parmanantly until we change it.
    - After that we do some important critical queries.
- If any error happens after the query, we use ***ROLLBACK***;
