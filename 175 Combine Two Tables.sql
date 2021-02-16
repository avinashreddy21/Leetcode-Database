SELECT p.FirstName, p.LastName, a.City, a.State
FROM Person p LEFT JOIN Address a
ON p.PersonId = a.PersonId;

# LEFT JOIN returns all rows(matched and unmatched) from left side table and only matched rows from right side table.
# returns NULL from right side table if there is no match.