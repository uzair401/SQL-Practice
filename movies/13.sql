SELECT DISTINCT people.name
FROM movies
JOIN stars AS s1 ON movies.id = s1.movie_id
JOIN people ON s1.person_id = people.id
JOIN stars AS s2 ON movies.id = s2.movie_id
JOIN people AS kevin_bacon ON s2.person_id = kevin_bacon.id
WHERE kevin_bacon.name = 'Kevin Bacon' AND kevin_bacon.birth = 1958 AND people.name <> 'Kevin Bacon';
