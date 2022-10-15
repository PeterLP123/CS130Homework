SELECT booktitle, bookpages
FROM cs130lab3
WHERE bookpages % 2 = 0
    AND bookpages >= 100
    AND bookpages <= 200;