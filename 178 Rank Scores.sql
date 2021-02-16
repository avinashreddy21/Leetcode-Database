SELECT
    Score as score,
    DENSE_RANK() OVER (
        ORDER BY Score DESC
    ) "Rank"
FROM
    Scores;

# Here the column name "Rank" must be in quotes because there is a built in function Rank() in SQL.
