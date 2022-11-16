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

### Question 7:
- 41 rows affected
<br/>

    SELECT *
    FROM lab7_students, lab7_enrolledon
    WHERE (lab7_students.studentid = lab7_enrolledon.studentid)
    AND lab7_enrolledon.moduleid = 'CS123';

### Question 8:
- 158 rows affected
<br/>

    SELECT lab7_enrolledon.studentid, lab7_enrolledon.moduleid
    FROM lab7_students, lab7_enrolledon, lab7_modules
    WHERE (lab7_enrolledon.studentid = lab7_students.studentid)
    AND (lab7_enrolledon.moduleid = lab7_modules.moduleid)
    AND lab7_modules.modulesemester = 'Semester 1' AND lab7_students.studentgender = 'Female';

### Question 9:
- 374 rows affected
<br/>

    SELECT lab7_enrolledon.moduleid, lab7_enrolledon.studentid
    FROM lab7_students, lab7_enrolledon
    WHERE (lab7_students.studentid = lab7_enrolledon.studentid) AND studentemail ~* '.*2017.*';

### Question 10:
- 254 rows affected
<br/>

    SELECT lab7_enrolledon.studentid, lab7_enrolledon.moduleid, lab7_students.studentcourse
    FROM lab7_students, lab7_enrolledon, lab7_modules
    WHERE (lab7_enrolledon.studentid = lab7_students.studentid)
    AND (lab7_enrolledon.moduleid = lab7_modules.moduleid)
    AND lab7_modules.modulecredits >= 10 AND lab7_modules.modulecredits <= 15
    AND lab7_students.studentcourse NOT LIKE 'BSc%'
    AND lab7_students.studentcourse NOT LIKE 'BA%';

### Question 11:
- 35 rows affected
<br/>

    SELECT * FROM lab7_enrolledon/lab7_modules
    WHERE moduleid = 'CS2800';

### Question 12:
- 15 rows affected
<br/>

    SELECT * FROM lab7_enrolledon/lab7_students
    WHERE studentid = 'SN09817';