SELECT *
FROM cs130lab4
WHERE (
    (EXTRACT (SECONDS FROM downloadts))+
    (EXTRACT (MINUTES FROM downloadts))+
    (EXTRACT (HOURS FROM downloadts))+
    (EXTRACT (DAYS FROM downloadts))+
    (EXTRACT (MONTHS FROM downloadts))
            ) = 42
    AND EXTRACT (YEARS FROM downloadts) != 2016;