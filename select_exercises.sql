USE codeup_test_db;
-- The name of all albums by Pink Floyd.
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- The genre for Nevermind
-- Which albums were released in the 1990s
-- Which albums had less than 20 million certified sales

-- All the albums with a genre of "Rock". Why do these query results
-- not include albums with a genre of "Hard rock" or "Progressive rock"?

SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT name, release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT artist, genre FROM albums WHERE name ='Nevermind';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT name FROM albums WHERE sales < 20;
SELECT artist, name, genre FROM albums WHERE genre = 'Rock';

-- The reason 'Rock' only shows the beatles is because when searching the db the string is looking
-- for an exact match, as opposed to something like .contains
