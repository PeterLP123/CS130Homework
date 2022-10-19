SELECT *
FROM cs130lab4
WHERE (EXTRACT(DOW FROM downloadts) = 0)
AND  (EXTRACT(YEAR FROM downloadts) = 2016)
AND user_agent ~ '.*Googlebot/2\.1.*';