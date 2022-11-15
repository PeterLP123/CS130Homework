# Lab 7 Answer Sheet

### Question 1:
- 191 rows affected 
<br />

    SELECT *
    FROM cs130_lab7_property
    WHERE listingdate = '2017-10-13'
    OR listingdate = '2017-10-14';<br/>

    UPDATE cs130_lab7_property
    SET listingdate = '2017-10-15'
    WHERE listingdate = '2017-10-13'
    OR listingdate = '2017-10-14';

### Question 2:
- 58 rows affected
<br/>

    SELECT *
    FROM cs130_lab7_property
    WHERE askingprice < 100000
    AND askingprice > 95000;

### Question 3:
- 45 rows affected
<br/>

    SELECT *
    FROM cs130_lab7_property
    WHERE (energyrating = 'C' OR energyrating = 'D')
    AND agent = 'Property Kings'
    AND housetype = 'Semi-detached';

### Question 4:
- 128 rows affected
<br/>

    SELECT *
    FROM cs130_lab7_property
    WHERE agent IS NULL OR numbeds IS NULL;

### Question 5:
- 661 rows affected
<br/>

    SELECT *
    FROM cs130_lab7_property
    WHERE agent = 'CS130 Estates';

### Question 6:
- 9 rows affected
<br/>

    SELECT *
    FROM cs130_lab7_property
    WHERE length(address) > 20
    AND address ~* '^.*\d\d\d\d.*road$';