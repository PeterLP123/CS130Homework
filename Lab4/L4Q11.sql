SELECT * FROM cs130lab4
WHERE filesize >= 400
AND (EXTRACT(HOUR FROM downloadts) IN (2, 3, 5, 7, 11, 13, 17, 19, 23))
AND (EXTRACT(DAYS FROM downloadts) IN (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31))
AND (EXTRACT(MONTHS FROM downloadts) IN (2, 3, 5, 7, 11));