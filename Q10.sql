SELECT *
FROM cs130lab3
WHERE bookprice * 1.12 > 60 AND bookpages >= 100 AND (custregion = 'IE' OR custregion = 'UK');