SELECT m.id AS Movie_ID, m.name AS Movie_Title, m.imdb_rating AS Rating FROM (
    SELECT id, name, imdb_rating, year, genre FROM movies
    WHERE year <= 1985 AND genre = "horror"
    ORDER BY imdb_rating DESC) m
LIMIT 3