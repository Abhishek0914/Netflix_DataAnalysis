SELECT * FROM netflixdaschema.netflixdatashort;

SELECT country, COUNT(*) as production_count
FROM  netflixdaschema.netflixdatashort
GROUP BY country
ORDER BY production_count DESC
LIMIT 2;

SELECT 
    (SELECT COUNT(*) FROM  netflixdaschema.netflixdatashort WHERE type = 'Movie') * 1.0 /
    (SELECT COUNT(*) FROM  netflixdaschema.netflixdatashort WHERE type = 'TV Show') AS movie_to_tv_show_ratio;

SELECT
    country,
    COUNT(CASE WHEN type = 'Movie' THEN 1 END) AS movie_count,
    COUNT(CASE WHEN type = 'TV Show' THEN 1 END) AS tv_show_count
FROM
    netflixdaschema.netflixdatashort
GROUP BY
    country;
    
SELECT rating, COUNT(show_id) AS show_count
FROM netflixdaschema.netflixdatashort
GROUP BY rating;


SELECT listed_in AS genre, COUNT(DISTINCT show_id) AS show_count
FROM netflixdaschema.netflixdatashort
GROUP BY listed_in;
