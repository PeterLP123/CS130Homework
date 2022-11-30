# Lab 8 Answer Sheet

### Question 1:
- 14 rows affected
</br >

    SELECT *
    FROM lab8_products, lab8_sells, lab8_stores
    WHERE lab8_products.productid = lab8_sells.productid AND lab8_sells.storeid = lab8_stores.storeid
    AND lab8_stores.storestate = 'Florida';

### Question 2:
- 57 rows affected
</br >

    SELECT *
    FROM lab8_products, lab8_sells, lab8_stores
    WHERE lab8_products.productid = lab8_sells.productid AND lab8_sells.storeid = lab8_stores.storeid
    AND lab8_products.price >= 10 AND lab8_products.price <= 50;

### Question 3:
- 7 rows affected
</br >

    UPDATE lab8_sells
    SET storeid = 'CS130A'
    WHERE lab8_sells.storeid = 'KD982A';

    UPDATE lab8_stores
    SET storeid = 'CS130A'
    WHERE lab8_sells.storeid = 'KD982A';

### Question 4:
- 6 rows affected
</br >

    SELECT * FROM lab8_stores
    WHERE storeid = 'YK67IA';

    SELECT * FROM lab8_sells
    WHERE storeid = 'YK67IA';

### Question 5:
- 1 row affected
</br >

    UPDATE lab8_stores
    SET storemanager = 'Susan Reid'
    WHERE storename = 'Zoomdog';

### Question 6:
- 1 row affected
</br >

    UPDATE lab8_products
    SET price = price * 1.1
    WHERE productname = 'SanDisk 32GB Ultra Class Memory Card';

### Question 7:
- 12 rows affected
</br >

    DELETE FROM lab8_products
    WHERE productid = 'SURF1';

    DELETE FROM lab8_sells
    WHERE productid = 'SURF1';

### Question 8:
- You cannot truncate the Lab8_Products table without also truncating the Lab8_Sells table also

### Question 9:
- ERROR: cannot drop table lab8_products because other objects depend on it
