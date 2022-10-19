SELECT *
FROM cs130lab4
WHERE user_agent
~* '^.*AppleWebKit\/[0-9]+\.[0-9]+\.[0-9]+.*$';