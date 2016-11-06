-- CREATE TABLE business (
-- 	id INTEGER PRIMARY KEY, 
-- 	name VARCHAR(255),
-- 	reviews_id INT,
-- 	FOREIGN KEY(reviews_id) REFERENCES reviews(id)
-- );

-- CREATE TABLE users (
-- 	id INTEGER PRIMARY KEY, 
-- 	first_name VARCHAR(255),
-- 	last_name VARCHAR(255),
-- 	reviews_id INT,
-- 	FOREIGN KEY(reviews_id) REFERENCES reviews(id)
-- );

-- CREATE TABLE reviews (
-- 	id INTEGER PRIMARY KEY,
-- 	stars INT, 
-- 	comment VARCHAR(255),
-- 	business_id INT,
-- 	users_id INT
-- );
	
-- INSERT INTO business (name, reviews_id) VALUES ("Oliver Forest", 1); 
-- INSERT INTO business (name, reviews_id) VALUES ("Red Larry", 2); 
-- INSERT INTO business (name, reviews_id) VALUES ("Cake Factory", 3); 
-- INSERT INTO business (name, reviews_id) VALUES ("ITOP", 4); 

-- INSERT INTO users (first_name, last_name, reviews_id) VALUES ("Scarlett", "Virginia", 1);
-- INSERT INTO users (first_name, last_name, reviews_id) VALUES ("Fernando", "Inglesias", 2);
-- INSERT INTO users (first_name, last_name, reviews_id) VALUES ("Justin", "Beaver", 3);
-- INSERT INTO users (first_name, last_name, reviews_id) VALUES ("Taylor", "lyyft", 4);

-- INSERT INTO reviews (stars, comment, business_id, users_id) VALUES (4, "Elegant restaurant", 1, 1); 
-- INSERT INTO reviews (stars, comment, business_id, users_id) VALUES (5, "Great Service/ Food!", 2, 2); 
-- INSERT INTO reviews (stars, comment, business_id, users_id) VALUES (2, "Food's mehh. Wouldn't waste money here", 3, 3); 
-- INSERT INTO reviews (stars, comment, business_id, users_id) VALUES (3, "Tolerable, good for a quick snack or when on a budget.", 4, 4);