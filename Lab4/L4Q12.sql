SELECT *
FROM cs130lab4
WHERE filesize >= 100
AND log(10, LENGTH(appname)) = log(10, LENGTH(ip_address));