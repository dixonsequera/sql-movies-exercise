SELECT
  genres
  , COUNT(*)
FROM
  movies_metadata
GROUP BY
  genres;



SELECT
  original_title
  , revenue
FROM
  movies_metadata
ORDER BY
  revenue DESC
LIMIT
  1;



SELECT
  COUNT(*)
FROM
  movies_metadata
WHERE
  adult = 'True';



SELECT
  AVG(runtime)
FROM
  movies_metadata;

SELECT
  original_title
  , vote_average
FROM
  movies_metadata
WHERE
  vote_average >= 9;



SELECT
  original_language
  , COUNT(*)
FROM
  movies_metadata
GROUP BY
  original_language;



SELECT
  original_title
  , release_date
FROM
  movies_metadata
WHERE
  release_date LIKE '2020%';



SELECT
  original_title
  , status
FROM
  movies_metadata
WHERE
  status != 'Released';



SELECT
  original_title
  , belongs_to_collection
FROM
  movies_metadata
WHERE
  belongs_to_collection IS NOT NULL
  and belongs_to_collection != '';



SELECT
  original_title
  , budget
  , revenue
  , revenue - budget AS profit
FROM
  movies_metadata;
where
  budget != 0
  and revenue != 0;