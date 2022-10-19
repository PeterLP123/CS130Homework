SELECT *
FROM cs130lab4
WHERE LENGTH (appname) % 2 = 0
AND LENGTH(filename) % 2 = 0
AND filename ~* '^.*\.mp3$';