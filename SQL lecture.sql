CREATE TABLE "person" (
	id SERIAL PRIMARY KEY,
	name VARCHAR (25)
);

INSERT INTO "person" (name)
VALUES ('Chris'), ('Josh'), ('Sarah'), ('David');

CREATE TABLE "hobby" (
	"id" SERIAL PRIMARY KEY,
	description VARCHAR (100)
);

INSERT INTO "hobby" (description)
VALUES ('kayaking'),('video games'),('macrame'),('roller derby'), ('golf'),('board games'),('knitting'),('rock climbing');

CREATE TABLE "person_hobby" (/* this is a junction table references "whatever" will like up to the primary id on the whatever table */
	id SERIAL PRIMARY KEY,
	person_id INT REFERENCES "person",
	hobby_id INT REFERENCES "hobby",
	skill INT 
);

INSERT INTO "person_hobby"("person_id", "hobby_id", "skill")
VALUES (1,1,4), (1,5,2),(1,6,3),(1,8,4),(2,2,5),(2,5,2),(2,3,1),(3,7,3),(3,5,1),(3,4,2),(4,1,3),(4,3,1),(4,7,2),(4,8,3); 

--alias id
SELECT "id" FROM "person";
SELECT "id" as "person_id" FROM "person";

SELECT * FROM person JOIN person_hobby ON 
"person"."id" = "person_hobby"."person_id";

SELECT * FROM person JOIN person_hobby ON 
person.id = person_hobby.person_id
JOIN hobby ON hobby.id = person_hobby.hobby_id;

SELECT "h"."description", "ph"."skill" FROM "hobby" as "h"
JOIN "person_hobby" as "ph" ON "h"."id" = "ph"."hobby_id"
WHERE "ph"."person_id" = 2;

-- AGGREGATES -- built in fuction provided by SQL
-- count the number of records
SELECT COUNT(*) FROM "person";
--
SELECT MIN("skill") FROM person_hobby;

SELECT MAX("skill") FROM person_hobby;

SELECT AVG("skill") FROM person_hobby;

SELECT SUM("skill") FROM person_hobby;

SELECT MIN("skill"),MAX("skill") FROM person_hobby;

-- GROUP BY

SELECT hobby.description, COUNT(person_hobby.hobby_id),
AVG(person_hobby.skill)
FROM hobby JOIN person_hobby ON hobby.id = person_hobby.hobby_id
GROUP BY hobby.description;

