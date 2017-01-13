-- creates index on all model_titles & make_code
CREATE INDEX car_titles_code
  ON car_models (model_title, make_code);

-- creates index on all make_titles
CREATE INDEX car_make_titles
  ON car_models (make_title);

-- Time w/index 69.169 ms
SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';

-- Time w/index 66.289 ms
SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND  model_code = 'GT-R';

-- looks at all models and grabs by 'lam' then counts all the rows
-- Time w/index 68.910 ms
SELECT count(*)  FROM car_models WHERE make_code = 'LAM';

-- searches and counts cars from year 2010 to 2015
-- Time w/index 99.216 ms
SELECT count(*) FROM car_models WHERE year BETWEEN 2010 AND 2015;

-- searches all cars with year 2010
-- Time w/index 81.286 ms
SELECT count(*) FROM car_models WHERE year = '2010';






