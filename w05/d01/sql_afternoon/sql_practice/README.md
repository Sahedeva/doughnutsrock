### SQL Exercise

**15 min**

Let's populate the `wdi` database with some data and get more practice with SQL. Feel free to use ``` psql ``` or pgAdmin.

Insert the following 4 students into the `students` table.

- Jill's full name is Jilly Cakes; she's 30 years old, and lives at 123 Webdev Dr. Boston, MA
- Johns's full name is Johnny Bananas; hes 25 years old, and lives at 555 Five St, Fivetowns, NY
- Jackie's full name is Jackie Lackie; she's 101 years old, and lives at 2 OldForThis Ct, Fivetowns, NY
- Slagathorn's full name is Slaggy McRaggy; he's 28 and prefers not to list his address

You should come up with:

```sql
INSERT INTO students VALUES ('Jilly Cakes', 30, '123 Webdev Dr., Austin, TX');
INSERT INTO students VALUES ('Johnny Bananas', 25, '555 Five St, Round Rock, TX');
INSERT INTO students VALUES ('Jackie Lackie', 101, '123 Fake Street, Austin, TX');
INSERT INTO students VALUES ('Slaggy McRaggy', 28);
```

1. Do a `count` to verify how many records are in your database
2. Update Johnny Bananas to have an age of 24
3. Update Slaggy McRaggy to have the last name of 'Raggy' instead
4. View all the records and verify the data is correct 
5. Delete the last student in the database
6. View all the records and make sure the last student is no longer there
