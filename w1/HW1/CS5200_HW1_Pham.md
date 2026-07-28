_CS 5200  Database Management Systems  Summer 2026
Homework 1, Part A
Instructor: Dan Graziano
Student name:  Cherry Pham
Date:          05/19/2026
AI disclosure: I did not use any AI tools on this assignment._

# Part A: Concepts
_[50 points]_
Answer in your own words. Two to four sentences each for single-part questions, while multi-part equestions should have a few sentences per part. I am looking for evidence the Week 1 lecture actually landed.

## 1. Database vs. DBMS (8 pts)
Briefly explain the difference between a database and a DBMS. Then give one example of each from your own life or work (anything you've used or heard of).

#### Response
A database is an organized collection of structured data. A DBMS is the software that manages that data. In a way, DBMS to database is like GitHub to codebases. DBMS provides the tools/interfaces to handle storage, retrieval, security, concurrency, and enforces rule for databases. For example, my Spotify listening history (songs played, timestamps, playlists) is a database, while PostgreSQL is a DBMS that makes it possible to query and manage that data efficiently.

## 2. Data Independence (8 pts)
What is meant by data independence, and why was it considered a breakthrough when Codd proposed the relational model in 1970? (Try to explain it the way you'd explain it to a non-technical friend.)

#### Response

Data independence means computers can change how information is stored without changing the apps that use the information. Before this idea existed, if engineers reorganized the data to make the computer faster, the apps using that data could suddenly stop working. An analogy for this is if every student had to relearn the entire library system every time books were moved to different shelves.

Edgar Codd helped solve this problem by creating the relational model, where programs interact with a logic layer of simple tables instead of the messy details of storage. It’s like using a library catalog: you search for a book by title or author, while the librarian can rearrange the shelves however they want behind the scenes. You still find your book the same way through "querying" for authors, title, etc.

## 3. AI policy in practice (8 pts)
Suppose, while working on Part B of this assignment, you got stuck for a long time on a question. You ask ChatGPT/Claude to explain why your query is returning the wrong results. Claude rewrites the query and gives you a working version that you don't fully understand.

**(a) According to the course AI policy, what specifically do you need to do before submitting the file?**
**(b) What further step (or steps) would you take so that this is genuinely your work and not just the LLM’s? Describe what you'd actually do and not what the policy says.**

#### Response

According to the course AI policy, I need to include a brief disclosure at the top of the file stating which LLM tool I used and how I used it. I do generally use autocomplete in vscode, but have made a habit for myself to not use autocomplete for pieces of code that I'm not familiar with (know when to use what functions and how, somewhat memorized functions names and use cases). So far, the queries seem straightforward and grounded in logic and I just need to memorize commands so I can't imagine an autofill use case. I definitely will revisit this topic as I know more about the type of code I would be writing. Maybe as I'm more familiar with the commands, I will draw schemas and relation tables and let LLMs turn that into databases. I believe that is still my work because I design the database structure and connections myself and have evidence of that design. I will make sure to keep that evidence, not only as proof of academic integrity, but also as design documentation for my work in case I need to iterate on any design decisions.


## 4. Read a database in the wild (12 pts)
Pick one application or service you use that obviously runs on a database. Not Pagila, and not the soccer-league example I'll introduce next week. Pick something real like Spotify, Venmo, your bank, MyChart, Instagram, or anything.

#### Response

**(a) Name the application.**
Spotify
**(b) Name three pieces of information that you can reasonably guess are stored as columns of a single table somewhere in this system. (You don't need to know the schema, simply guess from the user-facing behavior.)**
Per song:
- track name
- ms played
- reason end

**(c) Name two relationships between tables you'd expect to exist. "Each X belongs to one Y" or "each Y can have many X" is fine.**
Each track belongs to one artist, but each artist can have many tracks. Each track can have many reasons to end. One artist can have many tracks as well as one track may have many artists. A track can route to an album table and then to an artist table or it can route straight to an artist table.

**(d) Name one constraint or business rule the system probably enforces. (Examples: "a username can't be reused," "a balance can't go below zero unless overdraft is on," etc...)**
Track name can't be null if the tables stem from track names. Ms played can't be less than 0ms.

## 5. Reading SQL (6 pts)
Below is a SELECT statement. In two or three sentences, describe what it returns in plain English and tell me what DESC changes about the output.
```
SELECT first_name, last_name, major, credits
FROM students
WHERE major ILIKE('Science')
    AND credits >= 60
ORDER BY last_name DESC
LIMIT 5;
```

#### Response

This query retrieves the first name, last name, major, and credits for students whose major contains the word "Science" with at least 60 credits. It then sorts the results by last name and returns only the top 5 rows. DESC makes the ordering be in reverse alphabetical order instead of the default A to Z ascending order.

## 6. Looking ahead (8 pts)
Pick one table from Pagila like film, actor, customer or any other table. Describe in plain English what each row in that table represents. Then name one other Pagila table that this one is related to, and describe the relationship. ("Each X is associated with one Y" / "Each X can have many Ys" / etc...) You don't need to know the schema. Explore the columns in DBeaver and determine the answer from what you see.

#### Response
The `store_id` table have the following rows `manager_staff_id`, `address_id`, and `last_update`.
- `manager_staff_id` is an `int` type with no default values that contains the store's manager ID.
- `address_id` is an `int` type with no default values that contains the store's address ID. This itself is also a table with further information.
- `last_update` is a `timestamptz` type with default of now(), I assume is the last time each store's information is updated?

The store ID field appears in the `customer`, `staff`, and `inventory` tables.
