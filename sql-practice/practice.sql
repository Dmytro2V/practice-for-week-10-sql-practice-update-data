.print
.print ============================= TABLE INIT ===============================
.read seed-data.sql
SELECT * FROM friends;
.print -------------- Step 1: Update last name
UPDATE friends 
    SET last_name = 'Blue'
    WHERE first_name = 'Amy'AND last_name = 'Pond'
;
SELECT * FROM friends;

.print -------------- Step 2: Silent failure
UPDATE friends
SET last_name = 'Smith'
    WHERE first_name = 'Rose'
    AND last_name = 'Tyler'
;
SELECT * FROM friends;