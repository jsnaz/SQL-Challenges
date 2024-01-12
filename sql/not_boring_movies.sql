#Write a solution to report the movies with an odd-numbered ID and a description that is not "boring". Return in DESC order
## MOD() to check remainder

#Table name: Cinema, Dimension: id, movie, description, rating

SELECT *
FROM Cinema
WHERE MOD(id, 2) != 0 AND description != "boring"
ORDER BY rating DESC;