-- db indexed_cars


CREATE TABLE IF NOT EXISTS car_models
(
 id serial,
 make_code character varying(125) NOT NULL,
 make_title character varying(125) NOT NULL,
 model_code character varying(125) NOT NULL,
 model_title character varying(125) NOT NULL,
 year integer NOT NULL,
 PRIMARY KEY (id)
)
-- Time: 71.622 ms
SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';

-- Time: 117.308 ms
SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND  model_code = 'GT-R';

-- Time: 70.396 ms  looks at all models and grabs by 'lam' then counts all the rows
SELECT count(*)  FROM car_models WHERE make_code = 'LAM';

-- Time: 132.636 ms searches and counts cars from year 2010 to 2015
SELECT count(*) FROM car_models WHERE year BETWEEN 2010 AND 2015;

-- Time: 81.562 ms  searches all cars with year 2010
SELECT count(*) FROM car_models WHERE year = '2010';








