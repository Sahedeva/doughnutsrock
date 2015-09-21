## World Lab

Let's learn a few things about this crazy world! 

1. Start by opening and copying the contents of the `worlds.sql` file in this class folder
2. Open up your terminal, then type in `psql` at the prompt to start the Postgres REPL
3. Run the command `create database world;`
4. Switch to the new database by typing in `\c world`
5. Paste the contents of the SQL file you copied from step 1

Here's a model of what you now have loaded in the `world` database. The first row is the table name, the second is the primary key and finally the remaining are any additional attributes.
<img src="http://i.imgur.com/BirbWW5.png" />

## Exercises

* Using `count`, get the number of cities in the USA
* Find out what the population and average life expectancy for people in Argentina (ARG) is
* Using `IS NOT NULL, ORDER BY, LIMIT`, what country has the highest life expectancy?
* Using `LEFT JOIN, ON`, what is the capital of Spain (ESP)?
* Using `LEFT JOIN, ON`, list all the languages spoken in the 'Southeast Asia' region

## BONUS
Select 25 cities around the world that start with the letter 'F' in a single SQL query.