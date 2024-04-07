

SELECT * FROM people
WHERE forenames = 'Polly';

UPDATE people
SET title = 'Miss'
WHERE gender = 'female';

UPDATE people 
SET gender = 'female'
WHERE forename = 'Polly';

UPDATE people
SET gender = 'Male'
WHERE title = 'Mr'


DELETE from people
WHERE subscribed = 0;

SELECT * FROM poeple;

SELECT * FROM ordergroups;

INSERT INTO ordergroups
VALUES(4,5,10,15);

INSERT INTO ordergroups (id, discount, postage)
VALUES(6,6,12);





