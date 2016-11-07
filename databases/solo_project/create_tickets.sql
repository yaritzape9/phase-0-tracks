-- CREATE TABLE plane_info ( 
--  id INTEGER PRIMARY KEY,
--  airline  VARCHAR(255),
--  max_passengers_in_plane INT
-- ); 

-- CREATE TABLE passenger_tickets (
--   id INTEGER PRIMARY KEY,
--   name VARCHAR(255),
--   age INT,
--   destination VARCHAR(255),
--   citizen_of_us BOOLEAN,
--   plane_id INT,
--   FOREIGN KEY (plane_id) REFERENCES plane_info(id)
-- );

-- INSERT INTO plane_info (airline, max_passengers_in_plane) VALUES ("United Airlines", 200);
-- INSERT INTO plane_info (airline, max_passengers_in_plane) VALUES ("Hawaian Airlines", 500);
-- INSERT INTO plane_info (airline, max_passengers_in_plane) VALUES ("Virgin America", 900);


-- INSERT INTO passenger_tickets (name, age, destination, citizen_of_us, plane_id) VALUES ("Hally", 20, "Florida", "true", 1);
-- INSERT INTO passenger_tickets (name, age, destination, citizen_of_us, plane_id) VALUES ("Cristina", 18, "Texas", "true", 3);
-- INSERT INTO passenger_tickets (name, age, destination, citizen_of_us, plane_id) VALUES ("Ryan", 24, "Hawaii", "false", 2);
-- INSERT INTO passenger_tickets (name, age, destination, citizen_of_us, plane_id) VALUES ("Greta", 28, "NYC", "true", 1);
-- INSERT INTO passenger_tickets (name, age, destination, citizen_of_us, plane_id) VALUES ("Beatrice", 19, "California", "true", 3);


