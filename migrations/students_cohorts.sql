-- A cohort will have the following attributes:

-- id: A unique identifier
-- name: The name of the cohort
-- start_date: The cohorts' start date
-- end_date: The cohorts' end date


CREATE TABLE cohorts(
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR (255) NOT NUll,
  start_date DATE,
  end_date DATE
);

CREATE TABLE students(
  id SERIAL PRIMARY KEy  NOT NULL,
  name VARCHAR(255) NOT NULL,
  age DATE,
  email VARCHAR(255),
  phone  VARCHAR(255),
  github VARCHAR(255),
  start_date DATE,
  end_date   DATE,
  cohort_id INTEGER REFERENCES cohorts(id) on DELETE CASCADE
);


