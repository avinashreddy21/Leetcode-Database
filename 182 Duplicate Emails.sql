SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(*) > 1
;

# Use 'GROUP BY' to group the table based on emails and find the count using 'COUNT()' function.
# If the count > 1, return that email. 