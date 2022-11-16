# Lab 6 Answer Sheet

### Question 1:
- Average = 49
<br/>

    SELECT AVG(reviews)
    FROM cs130tripadvisor
    WHERE continent = 'North America';

### Question 2:
- Average = 31
<br/>

    SELECT AVG(helpvotes)
    FROM cs130tripadvisor
    WHERE country = 'UK';

### Question 3:
- Month: April
<br/>

    SELECT reviewmonth, COUNT(reviewmonth) AS months
    FROM cs130tripadvisor
    GROUP BY reviewmonth
    ORDER BY months DESC;

### Question 4:
- North America, Couples
<br/>

    SELECT continent, traveller, COUNT(*) AS groupc
    FROM cs130tripadvisor
    GROUP BY continent, traveller
    ORDER BY groupc DESC;

### Question 5:
- 5th is Ireland
<br/>

    SELECT country, COUNT(*) AS ccount
    FROM cs130tripadvisor
    GROUP BY country
    ORDER BY ccount DESC;

### Question 6:
- Trump International Hotel Las Vegas
<br/>

    SELECT hotelname, COUNT(*) AS groupc
    FROM cs130tripadvisor
    WHERE stay = 'Jun-Aug'
    GROUP BY hotelname
    ORDER BY groupc DESC;

### Question 7:
- 
