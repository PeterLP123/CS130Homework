SELECT *
FROM cs130lab4
WHERE filename ~* '^[aeiou].*[aeiou]\.mpeg$'
OR filename ~* '^[aeiou]\.mpeg$';