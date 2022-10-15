SELECT *
FROM cs130lab3
WHERE custiban ~ '^.*\d{4} \d{4} \d{4} \d{4} \d{4} \d{4}.*$'
