USE codeup_test_db;

SELECT * FROM albums;
SELECT * FROM albums WHERE release_date < 1980;
SELECT * FROM albums WHERE artist = 'Michael Jackson';
-- UPDATE albums SET sales = sales * 10;
UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT artist,sales FROM albums;
SELECT artist, release_date FROM albums WHERE release_date = 1800;
SELECT * FROM albums WHERE artist = 'Peter Jackson';