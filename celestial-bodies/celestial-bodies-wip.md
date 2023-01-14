Create database:
CREATE DATABASE universe db

Create tables:

<!-- CREATE TABLE galaxy(name VARCHAR(60) NOT NULL UNIQUE, description TEXT, age_in_millions_of_years NUMERIC(6,2), galaxy_types VARCHAR(100) NOT NULL, black_hole_center BOOLEAN, rotation_speed NUMERIC(5,1)); -->
<!-- CREATE TABLE star(name VARCHAR(60) NOT NULL); -->
<!-- CREATE TABLE planet(name VARCHAR(60) NOT NULL); -->
<!-- CREATE TABLE moon(name VARCHAR(60) NOT NULL); -->
<!-- CREATE TABLE space_fact(name VARCHAR(60) NOT NULL) -->

galaxy table:

<!-- galaxy_id SERIAL PRIMARY KEY
name VARCHAR(60) NOT NULL UNIQUE
description TEXT
age_in_millions_of_years NUMERIC(6, 2)
galaxy_types VARCHAR(100) NOT NULL
black_hole_center BOOLEAN
rotation_speed NUMERIC(5, 1) -->

star table:

<!-- star_id SERIAL PRIMARY KEY
name VARCHAR(60) NOT NULL UNIQUE
description TEXT
stellar_companion BOOLEAN
star_type VARCHAR(60) NOT NULL
lifespan INT
distance_from_earth_miles INT -->

<!-- ALTER TABLE star ADD COLUMN galaxy_id INT REFERENCES galaxy(galaxy_id); -->

planet table:

<!-- planet_id SERIAL PRIMARY KEY
name VARCHAR(60) NOT NULL UNIQUE
description TEXT
has_life BOOLEAN
is_spherical BOOLEAN
distance_from_earth INT NOT NULL -->

<!-- ALTER TABLE planet ADD COLUMN star_id INT REFERENCES star(star_id); -->

moon table:

<!-- table_id SERIAL PRIMARY KEY
name VARCHAR(60) NOT NULL UNIQUE
description TEXT
diameter_km INT NOT NULL
surface_gravity NUMERIC(5, 4) -->

<!-- ALTER TABLE moon ADD COLUMN planet_id INT REFERENCES planet(planet_id); -->

space_fact table:

<!-- space_fact_id SERIAL PRIMARY KEY
name VARCHAR(60) NOT NULL UNIQUE
description TEXT NOT NULL
source VARCHAR(100) -->

<!-- ALTER TABLE space_fact ADD COLUMN planet_id INT REFERENCES planet(planet_id) -->
