--fail if it returns any rows with a score over 10

SELECT * FROM (
    SELECT score
    FROM dbt.stg_countries_2019
    UNION ALL
    SELECT score
    FROM dbt.stg_countries_2024) as result
WHERE result.score > 10